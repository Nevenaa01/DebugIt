using DebugIt.Domain;
using DebugIt.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Controllers
{
    [Route("api/question")]
    [ApiController]
    public class QuestionController : ControllerBase
    {
        private readonly IQuestionService _questionService;
        public QuestionController(IQuestionService questionService)
        {
            _questionService = questionService;

        }

        [HttpGet]
        public async Task<IActionResult> GetAllDocuments()
        {
            var result = await _questionService.GetAllDocuments();
            return Ok(result);
        }

        [HttpGet("{id:int}")]
        public async Task<IActionResult> GetDocument(int id)
        {
            var result = await _questionService.GetDocumentAsync(id);
            return result == null ? NotFound() : Ok(result);
        }

        [HttpGet("search/{query}")]
        public async Task<IActionResult> Search(string query)
        {
            var result = await _questionService.SearchAsync(query);
            return Ok(result);
        }

        [HttpPost]
        public async Task<IActionResult> CreateDocument([FromBody]Question question)
        {
            var result = await _questionService.CreateDocumentAsync(question);
            return Ok(result);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateDocument([FromBody]Question question)
        {
            var result = await _questionService.UpdateDocumentAsync(question);
            return Ok(result);
        }

        [HttpDelete("{id:int}")]
        public async Task<IActionResult> DeleteDocument(int id)
        {
            var result = await _questionService.DeleteDocumentAsync(id);
            return Ok(result);
        }
    }
}
