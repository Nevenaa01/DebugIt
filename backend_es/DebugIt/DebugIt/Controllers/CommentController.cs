using DebugIt.Domain;
using DebugIt.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Controllers
{
    [Route("api/comment")]
    [ApiController]
    public class CommentController : ControllerBase
    {
        private readonly ICommentService _commentService;
        public CommentController(ICommentService commentService)
        {
            _commentService = commentService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllDocuments()
        {
            var result = await _commentService.GetAllDocuments();
            return Ok(result);
        }

        [HttpGet("{id:int}")]
        public async Task<IActionResult> GetDocument(int id)
        {
            var document = await _commentService.GetDocumentAsync(id);
            return document == null ? NotFound() : Ok(document);
        }

        [HttpGet("ofQuestion/{id:int}")]
        public async Task<IActionResult> GetByQuestionId(int id)
        {
            var result = await _commentService.GetByQuestionId(id);
            return Ok(result);
        }

        [HttpGet("ofThread/{id:int}")]
        public async Task<IActionResult> GetByThreadId(int id)
        {
            var result = await _commentService.GetByThreadId(id);
            return Ok(result);
        }

        [HttpPost]
        public async Task<IActionResult> CreateDocument([FromBody] Comment comment)
        {
            var result = await _commentService.CreateDocumentAsync(comment);
            return Ok(result);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateDocument([FromBody] Comment comment)
        {
            var result = await _commentService.UpdateDocumentAsync(comment);
            return Ok(result);
        }

        [HttpDelete("{id:int}")]
        public async Task<IActionResult> DeleteDocument(int id)
        {
            var result = await _commentService.DeleteDocumentAsync(id);
            return Ok(result);
        }
    }
}
