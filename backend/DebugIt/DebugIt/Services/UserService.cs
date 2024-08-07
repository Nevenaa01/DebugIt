using AutoMapper;
using DebugIt.Api.Dtos;
using DebugIt.Api.Public;
using DebugIt.BuildingBlocks.UseCases;
using DebugIt.Domain;
using DebugIt.Domain.RepositoryInterfaces;

namespace DebugIt.Services;

public class UserService : CrudService<UserDto, User>, IUserService
{
    private IUserRepository _userRepository;

    public UserService(ICrudRepository<User> repository, IMapper mapper, IUserRepository userRepository) : base(repository, mapper)
    {
        _userRepository = userRepository;
    }
}
