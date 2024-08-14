using DebugIt.Domain;

namespace DebugIt.Services.Interfaces;

public interface ICommentService
{
    Task<string> CreateDocumentAsync(Comment document);
    Task<Comment> GetDocumentAsync(int id);
    Task<IEnumerable<Comment>> GetAllDocuments();
    Task<string> UpdateDocumentAsync(Comment document);
    Task<string> DeleteDocumentAsync(int id);
    Task<IEnumerable<Comment>> GetByQuestionId(int questionId);
    Task<IEnumerable<Comment>> GetByThreadId(int threadId);
}
