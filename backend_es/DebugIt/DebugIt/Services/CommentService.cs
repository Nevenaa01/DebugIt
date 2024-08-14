using DebugIt.Domain;
using DebugIt.Services.Interfaces;
using Nest;

namespace DebugIt.Services;

public class CommentService : ElasticsearchService<Comment>, ICommentService
{
    private readonly ElasticClient _elasticClient;

    public CommentService(ElasticClient elasticClient) : base(elasticClient)
    {
        _elasticClient = elasticClient;   
    }

    public async Task<IEnumerable<Comment>> GetByQuestionId(int questionId)
    {
        var res = await _elasticClient.SearchAsync<Comment>(c => c
            .Index("comment-index")
            .Query(q => q
                .Term(t => t
                    .Field(f => f.QuestionId)
                    .Value(questionId)
                )
            ));

        return res.Documents;
    }

    public async Task<IEnumerable<Comment>> GetByThreadId(int threadId)
    {
        var res = await _elasticClient.SearchAsync<Comment>(c => c
            .Index("comment-index")
            .Query(q => q
                .Term(t => t
                    .Field(f => f.CommentThreadId)
                    .Value(threadId)
                )
            ));

        return res.Documents;
    }
}
