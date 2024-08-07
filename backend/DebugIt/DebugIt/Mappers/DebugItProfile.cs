using AutoMapper;
using DebugIt.Api.Dtos;
using DebugIt.Domain;

namespace DebugIt.Mappers;

public class DebugItProfile : Profile
{
    public DebugItProfile()
    {
        CreateMap<UserDto, User>().ReverseMap();
        CreateMap<QuestionDto, Question>().ReverseMap();
    }
}
