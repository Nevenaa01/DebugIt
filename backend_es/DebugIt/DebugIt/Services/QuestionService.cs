using DebugIt.Domain;
using DebugIt.Services.Interfaces;
using Nest;

namespace DebugIt.Services;

public class QuestionService : ElasticsearchService<Question>, IQuestionService
{
    private readonly ElasticClient _elasticClient;

    public QuestionService(ElasticClient elasticClient) : base(elasticClient)
    {
        _elasticClient = elasticClient;
    }

    public async Task<IEnumerable<Question>> SearchAsync(string query)
    {
        var res = await _elasticClient.SearchAsync<Question>(s => s
            .Index("question-index")
            .Query(q => q
                //full text search
                .MultiMatch(m => m
                    .Query(query.ToLower())
                    .Fuzziness(Fuzziness.Auto)
                    .FuzzyTranspositions(true)
                    .Fields(f => f
                        .Field(ff => ff.Title)
                        .Field(ff => ff.Description)
                        .Field(ff => ff.Tags)
                    )
                )
            )
            .Size(1000));
        return res.Documents;
    }
}
