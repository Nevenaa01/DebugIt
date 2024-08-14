using DebugIt.Domain;
using DebugIt.Services.Interfaces;
using Nest;

namespace DebugIt.Services;

public class UserService : ElasticsearchService<User>, IUserService
{
    private readonly ElasticClient _elasticClient;

    public UserService(ElasticClient elasticClient) : base(elasticClient)
    {
        _elasticClient = elasticClient;
    }
}
