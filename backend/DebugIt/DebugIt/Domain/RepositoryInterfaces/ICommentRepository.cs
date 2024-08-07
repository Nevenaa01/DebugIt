namespace DebugIt.Domain.RepositoryInterfaces;

public interface ICommentRepository
{
    Comment? Get(int id);
    Comment Create(Comment comment);
    Comment Update(Comment comment);
    void Delete(int id);
}
