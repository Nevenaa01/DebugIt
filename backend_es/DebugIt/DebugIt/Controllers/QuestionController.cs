using DebugIt.Domain;
using DebugIt.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Controllers
{
    [Route("api/question")]
    [ApiController]
    public class QuestionController : ControllerBase
    {
        private readonly IElasticsearchService<Question> _elasticsearchService;
        public QuestionController(IElasticsearchService<Question> elasticsearchService)
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
            var result = await _elasticsearchService.GetDocumentAsync(id);
            return result == null ? NotFound() : Ok(result);
        }

        [HttpGet("/search/{query}")]
        public async Task<IActionResult> Search(string query)
        {
            var result = await _elasticsearchService.SearchAsync(query);
            return Ok(result);
        }

        [HttpPost]
        public async Task<IActionResult> CreateDocument([FromBody]Question question)
        {
            var result = await _elasticsearchService.CreateDocumentAsync(question);
            return Ok(result);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateDocument([FromBody]Question question)
        {
            var result = await _elasticsearchService.UpdateDocumentAsync(question);
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
