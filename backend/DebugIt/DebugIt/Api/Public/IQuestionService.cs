using DebugIt.Api.Dtos;
using FluentResults;

namespace DebugIt.Api.Public;

public interface IQuestionService
{
    Result<QuestionDto?> Get(int id);
    Result<QuestionDto> Create(QuestionDto question);
    Result<QuestionDto> Update(QuestionDto question);
    Result Delete(int id);
}
