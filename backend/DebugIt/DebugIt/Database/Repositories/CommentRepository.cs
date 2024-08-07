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
    public Comment? Get(int id)
    {
        var comment = _dbContext.Comments.FirstOrDefault(c => c.Id == id);
        if (comment == null) throw new KeyNotFoundException("Comment with id " + id + " doesnt exist");
        return comment;
    }

    public Comment Create(Comment comment)
    {
        _dbContext.Comments.Add(comment);
        _dbContext.SaveChanges();
        return comment;
    }
    public Comment Update(Comment comment)
    {
        var commentForUpdate = Get(comment.Id);
        commentForUpdate = comment;
        _dbContext.SaveChanges();
        return commentForUpdate;
    }

    public void Delete(int id)
    {
        var comment = Get(id);
        _dbContext.Comments.Remove(comment!);
        _dbContext.SaveChanges();
    }
}
