namespace DebugIt.Domain.RepositoryInterfaces;

public interface ICommentRepository
{
    List<Comment> GetByQuestionId(int questionId);
    List<Comment> GetByThreadId(int threadId);
}
