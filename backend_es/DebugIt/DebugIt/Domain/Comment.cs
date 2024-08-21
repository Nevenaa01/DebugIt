namespace DebugIt.Domain;

public class Comment
{
    public int Id { get; set; } = new Random().Next();
    public int QuestionId { get; set; }
    public string Description { get; set; }
    public int UserId { get; set; }
    public long PostedOn { get; set; }
    public long? EditedOn { get; set; }
    public int NumOfVotes { get; set; }
    public int? CommentThreadId { get; set; }

    public Comment() { }
    public Comment(int id, int questionId, string description, int userId, long postedOn, long? editedOn, int numOfVotes, int? commentThreadId)
    {
        Id = id;
        QuestionId = questionId;
        Description = description;
        UserId = userId;
        PostedOn = postedOn;
        EditedOn = editedOn;
        NumOfVotes = numOfVotes;
        CommentThreadId = commentThreadId;

        Validate();
    }

    private void Validate()
    {
        if (string.IsNullOrWhiteSpace(Description)) throw new ArgumentException("Invalid Description");
        if (PostedOn > GetMilliseconds(DateTime.UtcNow)) throw new ArgumentException("Invalid PostedOn date");
    }

    private long GetMilliseconds(DateTime date)
    {
        long milliseconds = date.Ticks / TimeSpan.TicksPerMillisecond;
        return milliseconds;
    }
}
