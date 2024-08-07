namespace DebugIt.Api.Dtos;

public class CommentDto
{
    public int Id { get; set; }
    public int QuestionId { get; set; }
    public string Description { get; set; }
    public int UserId { get; set; }
    public long PostedOn { get; set; }
    public int NumOfVotes { get; set; }
    public int? CommentThreadId { get; set; }
}
