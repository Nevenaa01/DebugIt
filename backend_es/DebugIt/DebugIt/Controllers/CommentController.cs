using DebugIt.Domain;
using DebugIt.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Controllers
{
    [Route("api/comment")]
    [ApiController]
    public class CommentController : ControllerBase
    {
        private readonly IElasticsearchService<Comment> _elasticsearchService;
        public CommentController(IElasticsearchService<Comment> elasticsearchService)
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
        public async Task<IActionResult> CreateDocument([FromBody] Comment comment)
        {
            var result = await _elasticsearchService.CreateDocumentAsync(comment);
            return Ok(result);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateDocument([FromBody] Comment comment)
        {
            var result = await _elasticsearchService.UpdateDocumentAsync(comment);
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
