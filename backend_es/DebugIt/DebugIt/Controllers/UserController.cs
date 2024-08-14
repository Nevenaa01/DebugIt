using DebugIt.Domain;
using DebugIt.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Controllers
{
    [Route("api/user")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUserService _userService;
        public UserController(IUserService userService)
        {
            _userService = userService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllDocuments()
        {
            var result = await _userService.GetAllDocuments();
            return Ok(result);
        }

        [HttpGet("{id:int}")]
        public async Task<IActionResult> GetDocument(int id)
        {
            var document = await _userService.GetDocumentAsync(id);
            return document == null ? NotFound() : Ok(document);
        }

        [HttpPost]
        public async Task<IActionResult> CreateDocument([FromBody] User user)
        {
            var result = await _userService.CreateDocumentAsync(user);
            return Ok(result);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateDocument([FromBody] User user)
        {
            var result = await _userService.UpdateDocumentAsync(user);
            return Ok(result);
        }

        [HttpDelete("{id:int}")]
        public async Task<IActionResult> DeleteDocument(int id)
        {
            var result = await _userService.DeleteDocumentAsync(id);
            return Ok(result);
        }
    }
}
