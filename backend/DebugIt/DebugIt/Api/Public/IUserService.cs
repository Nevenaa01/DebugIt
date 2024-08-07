using DebugIt.Api.Dtos;
using DebugIt.Domain;
using FluentResults;

namespace DebugIt.Api.Public;

public interface IUserService
{
    Result<List<UserDto>> GetAll();
    Result<UserDto?> Get(int id);
    Result<UserDto> Create(UserDto user);
    Result<UserDto> Update(UserDto user);
    Result Delete(int id);
}
