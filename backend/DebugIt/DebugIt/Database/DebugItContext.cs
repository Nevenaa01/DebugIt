using DebugIt.Domain;
using Microsoft.EntityFrameworkCore;

namespace DebugIt.Database;

public class DebugItContext : DbContext
{
    public DbSet<User> Users { get; set; }
    public DebugItContext(DbContextOptions<DebugItContext> options) : base(options) { }
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<User>()
            .Property(u => u.Id)
            .ValueGeneratedOnAdd();

        modelBuilder.Entity<User>().HasIndex(u => u.Email).IsUnique();
    }
}
