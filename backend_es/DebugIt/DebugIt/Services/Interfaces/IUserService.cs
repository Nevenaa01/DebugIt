using DebugIt.Domain;

namespace DebugIt.Services.Interfaces;

public interface IUserService
{
    Task<string> CreateDocumentAsync(User document);
    Task<User> GetDocumentAsync(int id);
    Task<IEnumerable<User>> GetAllDocuments();
    Task<string> UpdateDocumentAsync(User document);
    Task<string> DeleteDocumentAsync(int id);
}
