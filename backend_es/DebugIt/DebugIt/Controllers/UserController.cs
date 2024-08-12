using DebugIt.Domain;
using DebugIt.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Controllers
{
    [Route("api/user")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IElasticsearchService<User> _elasticsearchService;
        public UserController(IElasticsearchService<User> elasticsearchService)
        {
            _elasticsearchService = elasticsearchService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllDocuments()
        {
            var result = await _elasticsearchService.GetAllDocuments();
            return Ok(result);
        }

        [HttpGet("{id:int}")]
        public async Task<IActionResult> GetDocument(int id)
        {
            var document = await _elasticsearchService.GetDocumentAsync(id);
            return document == null ? NotFound() : Ok(document);
        }

        [HttpPost]
        public async Task<IActionResult> CreateDocument([FromBody] User user)
        {
            var result = await _elasticsearchService.CreateDocumentAsync(user);
            return Ok(result);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateDocument([FromBody] User user)
        {
            var result = await _elasticsearchService.UpdateDocumentAsync(user);
            return Ok(result);
        }

        [HttpDelete("{id:int}")]
        public async Task<IActionResult> DeleteDocument(int id)
        {
            var result = await _elasticsearchService.DeleteDocumentAsync(id);
            return Ok(result);
        }
    }
}
