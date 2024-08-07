namespace DebugIt.Domain.RepositoryInterfaces;

public interface IQuestionRepository
{
    Question? Get(int id);
    Question Create(Question question);
    Question Update(Question question);
    void Delete(int id);
}
