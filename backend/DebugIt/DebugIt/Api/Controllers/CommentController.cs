using DebugIt.Api.Dtos;
using DebugIt.Api.Public;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Api.Controllers;

[Route("api/comment")]
public class CommentController : BaseApiController
{
    private readonly ICommentService _commentService;

    public CommentController(ICommentService commentService)
    {
        _commentService = commentService;
    }

    [HttpGet]
    public ActionResult<List<CommentDto>> GetAll()
    {
        var result = _commentService.GetAll();
        return CreateResponse(result);
    }

    [HttpGet("{id:int}")]
    public ActionResult<CommentDto> Get(int id)
    {
        var result = _commentService.Get(id);
        return CreateResponse(result);
    }

    [HttpGet("ofQuestion/{id:int}")]
    public ActionResult<List<CommentDto>> GetByQuestionId(int id)
    {
        var result = _commentService.GetByQuestionId(id);
        return CreateResponse(result);
    }

    [HttpGet("ofThread/{id:int}")]
    public ActionResult<List<CommentDto>> GetByThreadId(int id)
    {
        var result = _commentService.GetByThreadId(id);
        return CreateResponse(result);
    }

    [HttpPost]
    public ActionResult<CommentDto> Create([FromBody] CommentDto commentDto)
    {
        var result = _commentService.Create(commentDto);
        return CreateResponse(result);
    }

    [HttpPut]
    public ActionResult<CommentDto> Update([FromBody] CommentDto commentDto)
    {
        var result = _commentService.Update(commentDto);
        return CreateResponse(result);
    }

    [HttpDelete("{id:int}")]
    public ActionResult Delete(int id)
    {
        var result = _commentService.Delete(id);
        return CreateResponse(result);
    }
}
