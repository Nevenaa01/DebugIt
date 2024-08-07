using DebugIt.Api.Public;
using DebugIt.BuildingBlocks.Database;
using DebugIt.BuildingBlocks.UseCases;
using DebugIt.Database;
using DebugIt.Database.Repositories;
using DebugIt.Domain;
using DebugIt.Domain.RepositoryInterfaces;
using DebugIt.Mappers;
using DebugIt.Services;

namespace DebugIt.Api.Startup;

public static class ModuleConfiguration
{
    public static IServiceCollection RegisterModule(this IServiceCollection services)
    {
        services.AddAutoMapper(typeof(DebugItProfile).Assembly);
        SetupCore(services);
        SetupInfrastructure(services);

        return services;
    }

    private static void SetupCore(IServiceCollection services)
    {
        services.AddScoped<IUserService, UserService>();
    }

    private static void SetupInfrastructure(IServiceCollection services)
    {
        services.AddScoped(typeof(ICrudRepository<User>), typeof(CrudDatabaseRepository<User, DebugItContext>));
        services.AddScoped<IUserRepository, UserRepository>();
    }
}
