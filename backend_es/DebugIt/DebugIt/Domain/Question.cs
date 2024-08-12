
namespace DebugIt.Domain;

public class Question
{
    public int Id { get; set; } = new Random().Next();
    public string Title { get; set; }
    public string Description { get; set; }
    public long PostedOn { get; set; }
    public long? EditedOn { get; set; }
    public int UserId { get; set; }
    public int NumOfVotes { get; set; }

    public Question() { }
    public Question(int id, string title, string description, long postedOn, long? editedOn, int userId, int numOfVotes)
    {
        Id = id;
        Title = title;
        Description = description;
        PostedOn = postedOn;
        EditedOn = editedOn;
        UserId = userId;
        NumOfVotes = numOfVotes;

        Validate();
    }

    private void Validate()
    {
        if (string.IsNullOrWhiteSpace(Title)) throw new ArgumentException("Invalid Title");
        if (string.IsNullOrWhiteSpace(Description)) throw new ArgumentException("Invalid Description");
        if (PostedOn > GetMilliseconds(DateTime.UtcNow)) throw new ArgumentException("Invalid PostedOn date");
        if (NumOfVotes != 0) throw new ArgumentException("Invalid NumOfVotes");
    }

    private long GetMilliseconds(DateTime date)
    {
        long milliseconds = date.Ticks / TimeSpan.TicksPerMillisecond;
        return milliseconds;
    }
}
