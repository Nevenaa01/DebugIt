using AutoMapper;
using DebugIt.Api.Dtos;
using DebugIt.Api.Public;
using DebugIt.BuildingBlocks.UseCases;
using DebugIt.Database.Repositories;
using DebugIt.Domain;
using DebugIt.Domain.RepositoryInterfaces;

namespace DebugIt.Services;

public class QuestionService : CrudService<QuestionDto, Question>, IQuestionService
{
    private IQuestionRepository _questionRepository;

    public QuestionService(ICrudRepository<Question> repository, IMapper mapper, IQuestionRepository questionRepository) : base(repository, mapper)
    {
        _questionRepository = questionRepository;
    }
}
