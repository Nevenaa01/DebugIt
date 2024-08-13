using DebugIt.Domain;

namespace DebugIt.Services;

public interface IElasticsearchService<T>
{
    Task<string> CreateDocumentAsync(T document);
    Task<T> GetDocumentAsync(int id);
    Task<IEnumerable<Question>> SearchAsync(string query);
    Task<IEnumerable<T>> GetAllDocuments();
    Task<string> UpdateDocumentAsync(T document);
    Task<string> DeleteDocumentAsync(int id);
}
