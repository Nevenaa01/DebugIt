using DebugIt.Domain;
using DebugIt.Services;
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
        //by using that, it can be sn which queries take longer than expected to execute
        .Setting("index.search.slowlog.threshold.fetch.warn", "1s")
    )
    .Map<User>(m => m.AutoMap()));

client.Indices.Create("question-index", q => q
    .Settings(s => s
        .NumberOfShards(2)
        .NumberOfReplicas(2)
        .Setting("index.merge.policy.max_merged_segment", "10mb")
        .Setting("index.search.slowlog.threshold.fetch.warn", "1s")
    )
    .Map<Question>(m => m.AutoMap()));

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

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
