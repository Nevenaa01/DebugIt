using DebugIt.Domain;
using Microsoft.EntityFrameworkCore;

namespace DebugIt.Context;

public class DebugItContext : DbContext
{
    public DbSet<User> Users { get; set; }
    public DebugItContext(DbContextOptions<DebugItContext> options) : base(options) { }
}
