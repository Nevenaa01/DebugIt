using DebugIt.Domain;
using DebugIt.Domain.RepositoryInterfaces;

namespace DebugIt.Database.Repositories;

public class QuestionRepository : IQuestionRepository
{
    private readonly DebugItContext _dbContext;

    public QuestionRepository(DebugItContext dbContext)
    {
        _dbContext = dbContext;
    }

    public Question? Get(int id)
    {
        var question = _dbContext.Questions.FirstOrDefault(q => q.Id == id);
        if (question == null) throw new KeyNotFoundException("Question with id " + id + " doesnt exist");
        return question;
    }

    public Question Create(Question question)
    {
        _dbContext.Questions.Add(question);
        _dbContext.SaveChanges();
        return question;
    }
    public Question Update(Question question)
    {
        var questionForUpdate = Get(question.Id);
        questionForUpdate = question;
        _dbContext.SaveChanges();
        return questionForUpdate;
    }

    public void Delete(int id)
    {
        var question = Get(id);
        _dbContext.Questions.Remove(question!);
        _dbContext.SaveChanges();
    }
}
