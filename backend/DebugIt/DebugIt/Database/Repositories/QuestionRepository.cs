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
}
