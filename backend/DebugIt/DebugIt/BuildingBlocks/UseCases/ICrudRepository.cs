using DebugIt.BuildingBlocks.Domain;

namespace DebugIt.BuildingBlocks.UseCases;

public interface ICrudRepository<TEntity> where TEntity : Entity
{
    TEntity Get(int id);
    TEntity Create(TEntity entity);
    TEntity Update(TEntity entity);
    void Delete(int id);
}