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
    public User? Get(int id)
    {
        var user = _dbContext.Users.FirstOrDefault(u => u.Id == id);
        if (user == null) throw new KeyNotFoundException("User with id " + id + " doesnt exist");
        return user;
    }

    public User Create(User user)
    {
        _dbContext.Users.Add(user);
        _dbContext.SaveChanges();
        return user;
    }
    public User Update(User user)
    {
        var userForUpdate = Get(user.Id);
        userForUpdate = user;
        _dbContext.SaveChanges();
        return userForUpdate;
    }

    public void Delete(int id)
    {
        var user = Get(id);
        _dbContext.Users.Remove(user!);
        _dbContext.SaveChanges();
    }
}
