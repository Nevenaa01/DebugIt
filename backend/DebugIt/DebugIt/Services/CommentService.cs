using AutoMapper;
using DebugIt.Api.Dtos;
using DebugIt.Api.Public;
using DebugIt.BuildingBlocks.UseCases;
using DebugIt.Domain;
using DebugIt.Domain.RepositoryInterfaces;
using FluentResults;

namespace DebugIt.Services;

public class CommentService : CrudService<CommentDto, Comment>, ICommentService
{
    private readonly ICommentRepository _commentRepository;
    public CommentService(ICrudRepository<Comment> repository, IMapper mapper, ICommentRepository commentRepository) : base(repository, mapper)
    {
        _commentRepository = commentRepository;
    }

    public Result<List<CommentDto>> GetByQuestionId(int questionId)
    {
        try
        {
            var comments = _commentRepository.GetByQuestionId(questionId);
            return MapToDto(comments);
        }
        catch(ArgumentException e)
        {
            return Result.Fail(FailureCode.InvalidArgument).WithError(e.Message);
        }
    }

    public Result<List<CommentDto>> GetByThreadId(int threadId)
    {
        try
        {
            var comments = _commentRepository.GetByThreadId(threadId);
            return MapToDto(comments);
        }
        catch (ArgumentException e)
        {
            return Result.Fail(FailureCode.InvalidArgument).WithError(e.Message);
        }
    }
}
