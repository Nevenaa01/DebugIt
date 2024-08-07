using DebugIt.BuildingBlocks.Domain;

namespace DebugIt.BuildingBlocks.UseCases;

public interface ICrudRepository<TEntity> where TEntity : Entity
{
    List<TEntity> GetAll();
    TEntity Get(int id);
    TEntity Create(TEntity entity);
    TEntity Update(TEntity entity);
    void Delete(int id);
}