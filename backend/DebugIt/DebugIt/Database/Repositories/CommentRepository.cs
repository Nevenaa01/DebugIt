using DebugIt.Domain;
using DebugIt.Domain.RepositoryInterfaces;

namespace DebugIt.Database.Repositories;

public class CommentRepository : ICommentRepository
{
    private readonly DebugItContext _dbContext;
    public CommentRepository(DebugItContext dbContext)
    {
        _dbContext = dbContext;
    }
    public List<Comment> GetByQuestionId(int questionId)
    {
        return _dbContext.Comments.Where(c => c.QuestionId == questionId).ToList();
    }

    public List<Comment> GetByThreadId(int threadId)
    {
        return _dbContext.Comments.Where(c => c.CommentThreadId == threadId).ToList();
    }
}
