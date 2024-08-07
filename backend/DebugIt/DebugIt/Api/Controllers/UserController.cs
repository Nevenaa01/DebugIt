using DebugIt.Api.Dtos;
using DebugIt.Api.Public;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Api.Controllers;

[Route("api/user")]
public class UserController : BaseApiController
{
    private readonly IUserService _userService;

    public UserController(IUserService userService)
    {
        _userService = userService;
    }

    [HttpGet("{id:int}")]
    public ActionResult<UserDto> Get(int id)
    {
        var result = _userService.Get(id);
        return CreateResponse(result);
    }

    [HttpPost]
    public ActionResult<UserDto> Create([FromBody] UserDto userDto)
    {
        var result = _userService.Create(userDto);
        return CreateResponse(result);
    }

    [HttpPut]
    public ActionResult<UserDto> Update([FromBody] UserDto userDto)
    {
        var result = _userService.Update(userDto);
        return CreateResponse(result);
    }

    [HttpDelete("{id:int}")]
    public ActionResult Delete(int id)
    {
        var result = _userService.Delete(id);
        return CreateResponse(result);
    }
}
