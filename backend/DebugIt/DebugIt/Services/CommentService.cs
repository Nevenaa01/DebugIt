using AutoMapper;
using DebugIt.Api.Dtos;
using DebugIt.Api.Public;
using DebugIt.BuildingBlocks.UseCases;
using DebugIt.Domain;
using DebugIt.Domain.RepositoryInterfaces;

namespace DebugIt.Services;

public class CommentService : CrudService<CommentDto, Comment>, ICommentService
{
    private readonly ICommentRepository _commentRepository;
    public CommentService(ICrudRepository<Comment> repository, IMapper mapper, ICommentRepository commentRepository) : base(repository, mapper)
    {
        _commentRepository = commentRepository;
    }
}
