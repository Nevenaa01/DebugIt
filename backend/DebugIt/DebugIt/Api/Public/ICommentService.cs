using DebugIt.Api.Dtos;
using FluentResults;

namespace DebugIt.Api.Public;

public interface ICommentService
{
    Result<List<CommentDto>> GetAll();
    Result<CommentDto?> Get(int id);
    Result<CommentDto> Create(CommentDto comment);
    Result<CommentDto> Update(CommentDto comment);
    Result Delete(int id);
}
