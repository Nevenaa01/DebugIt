using DebugIt.Api.Dtos;
using DebugIt.Api.Public;
using DebugIt.Services;
using Microsoft.AspNetCore.Mvc;

namespace DebugIt.Api.Controllers;

[Route("api/question")]
public class QuestionController : BaseApiController
{
    private readonly IQuestionService _questionService;
    private readonly ILogger<QuestionController> _logger;

    public QuestionController(IQuestionService questionService, ILogger<QuestionController> logger)
    {
        _questionService = questionService;
        _logger = logger;
    }

    [HttpGet]
    public ActionResult<List<QuestionDto>> GetAll()
    {
        _logger.LogInformation("Hello from action");
        var result = _questionService.GetAll();
        return CreateResponse(result);
    }

    [HttpGet("{id:int}")]
    public ActionResult<QuestionDto> Get(int id)
    {
        var result = _questionService.Get(id);
        return CreateResponse(result);
    }

    [HttpPost]
    public ActionResult<QuestionDto> Create([FromBody] QuestionDto questionDto)
    {
        var result = _questionService.Create(questionDto);
        return CreateResponse(result);
    }

    [HttpPut]
    public ActionResult<QuestionDto> Update([FromBody] QuestionDto questionDto)
    {
        var result = _questionService.Update(questionDto);
        return CreateResponse(result);
    }

    [HttpDelete("{id:int}")]
    public ActionResult Delete(int id)
    {
        var result = _questionService.Delete(id);
        return CreateResponse(result);
    }
}
