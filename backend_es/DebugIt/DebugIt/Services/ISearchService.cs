using DebugIt.Domain;
using Microsoft.OpenApi.Services;

namespace DebugIt.Services;

public interface ISearchService<T>
{
    Task<SearchResult<T>> Search(string query, int page, int pageSize);
    Task<SearchResult<T>> SearchByCategory(string query, IEnumerable<string> tags, int page, int pageSize);
    Task<IEnumerable<string>> Autocomplete(string query, int count);
}
