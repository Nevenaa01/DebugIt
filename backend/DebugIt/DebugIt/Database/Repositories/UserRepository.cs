using DebugIt.Domain;
using DebugIt.Domain.RepositoryInterfaces;

namespace DebugIt.Database.Repositories;

public class UserRepository : IUserRepository
{
    private readonly DebugItContext _dbContext;

    public UserRepository(DebugItContext dbContext)
    {
        _dbContext = dbContext;
    }
}
