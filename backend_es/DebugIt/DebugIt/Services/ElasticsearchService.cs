using DebugIt.Domain;
using Nest;

namespace DebugIt.Services;

public class ElasticsearchService<T> : IElasticsearchService<T> where T : class
{
    private readonly ElasticClient _elasticClient;

    public ElasticsearchService(ElasticClient elasticClient)
    {
        _elasticClient = elasticClient;
    }
    public async Task<string> CreateDocumentAsync(T document)
    {
        var res = await _elasticClient.IndexAsync(document, d => d.Index(typeof(T).Name.ToLower() + "-index"));
        return res.IsValid ? "Document created successfully" : "Failed to create document";
    }

    public async Task<string> DeleteDocumentAsync(int id)
    {
        var res = await _elasticClient.DeleteAsync<T>(id, d => d.Index(typeof(T).Name.ToLower() + "-index"));
        return res.IsValid ? "Document deleted successfully" : "Failed to delete document";
    }

    public async Task<IEnumerable<T>> GetAllDocuments()
    {
        var res = await _elasticClient.SearchAsync<T>(s => s
            .Index(typeof(T).Name.ToLower() + "-index")
            .MatchAll()
            .Size(10000));
        return res.Documents;
    }

    public async Task<T> GetDocumentAsync(int id)
    {
        var res = await _elasticClient.GetAsync<T>(id, d => d.Index(typeof(T).Name.ToLower() + "-index"));
        return res.Source;
    }

    public async Task<IEnumerable<Question>> SearchAsync(string query)
    {
        var res = await _elasticClient.SearchAsync<Question>(s => s
            .Index("question-index")
            .Query(q => q
                //full text search
                .MultiMatch(m => m
                    .Query(query.ToLower())
                    .Fields( f => f
                        .Field(ff => ff.Title)
                        .Field(ff => ff.Description)
                        .Field(ff => ff.Tags)
                    )
                )
            )
            .Size(1000));
        return res.Documents;
    }

    public async Task<string> UpdateDocumentAsync(T document)
    {
        var res = await _elasticClient.UpdateAsync(new DocumentPath<T>(document), d => d
            .Index(typeof(T).Name.ToLower() + "-index")
            .Doc(document)
            .RetryOnConflict(3));

        return res.IsValid ? "Document updated successfully" : "Failed to update document";
    }
}
