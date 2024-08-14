using DebugIt.Domain;
using DebugIt.Services;
using DebugIt.Services.Interfaces;
using DebugIt.Startup;
using Nest;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

//configuring Elasticsearch
var settings = new ConnectionSettings(new Uri("http://localhost:9200")).DefaultIndex("elasticsearch-demo");
var client = new ElasticClient(settings);

client.Indices.Create("user-index", u => u
    .Settings(s => s
        .NumberOfShards(1)
        .NumberOfReplicas(1)
        //merging segments into bigger segments
        .Setting("index.merge.policy.max_merged_segment", "10mb")
        //for logging slow search queries in Elasticsearch's slow log that is used for performance monitoring
        //by using that, it can be seen which queries take longer than expected to execute
        .Setting("index.search.slowlog.threshold.fetch.warn", "1s")
    )
    .Map<User>(m => m.AutoMap()));

client.Indices.Create("question-index", q => q
    .Settings(s => s
        .NumberOfShards(2)
        .NumberOfReplicas(2)
        .Setting("index.merge.policy.max_merged_segment", "10mb")
        .Setting("index.search.slowlog.threshold.fetch.warn", "1s")
        .Analysis(a => a
            .Tokenizers(t => t
            //custom tokenizer for Serbian Latin
            //works like the standard tokenizer
                .Standard("serbian_latin_tokenizer")
            )
            .TokenFilters(tf => tf
            //converts all text to lowercase, for consistent searches
                .Lowercase("serbian_lowercase")
            //diacritical c -> c and diacritical s -> s, so the search is more flexible
                .AsciiFolding("serbian_ascii_folding", afd => afd)
            //add a file with serbian stopwords
                .Stop("serbian_stop_words", st => st.StopWordsPath("serbianStopwords.txt"))
                .Stemmer("serbian_stemmer", st => st.Language("serbian"))
            )
            .Analyzers(an => an
                .Custom("serbian_latin_analyzer", ca => ca
                    .Tokenizer("serbian_latin_tokenizer")
                    .Filters("serbian_lowercase", "serbian_ascii_folding", "serbian_stop_words", "serbian_stemmer")
                )
                
            )
        )
    )
    .Map<Question>(m => m
        .AutoMap()
        .Properties(p => p
            .Text(t => t
                .Name(n => n.Title)
                //apply analyzer to this field
                .Analyzer("serbian_latin_analyzer")
            )
            .Text(t => t
                .Name(n => n.Description)
                //apply analyzer to this field
                .Analyzer("serbian_latin_analyzer")
            )
            .Keyword(t => t
                .Name(n => n.Tags)
            )
        )
    )
);

client.Indices.Create("comment-index", c => c
    .Settings(s => s
        .NumberOfShards(1)
        .NumberOfReplicas(1)
        .Setting("index.merge.policy.max_merged_segment", "10mb")
        .Setting("index.search.slowlog.threshold.fetch.warn", "1s")
    )
    .Map<Comment>(m => m.AutoMap()));

builder.Services.AddSingleton(client);


//dependency injection
builder.Services.AddScoped<IElasticsearchService<User>, ElasticsearchService<User>>();
builder.Services.AddScoped<IElasticsearchService<Question>, ElasticsearchService<Question>>();
builder.Services.AddScoped<IElasticsearchService<Comment>, ElasticsearchService<Comment>>();
builder.Services.AddScoped<IUserService, UserService>();
builder.Services.AddScoped<IQuestionService, QuestionService>();
builder.Services.AddScoped<ICommentService, CommentService>();

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

const string corsPolicy = "_corsPolicy";
builder.Services.ConfigureCors(corsPolicy);

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors(corsPolicy);

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
