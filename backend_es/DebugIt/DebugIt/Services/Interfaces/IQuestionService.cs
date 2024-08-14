using DebugIt.Domain;

namespace DebugIt.Services.Interfaces;

public interface IQuestionService
{
    Task<string> CreateDocumentAsync(Question document);
    Task<Question> GetDocumentAsync(int id);
    Task<IEnumerable<Question>> GetAllDocuments();
    Task<string> UpdateDocumentAsync(Question document);
    Task<string> DeleteDocumentAsync(int id);
    Task<IEnumerable<Question>> SearchAsync(string query);
}
