namespace DebugIt.Api.Dtos;

public class QuestionDto
{
    public int Id { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public long PostedOn { get; set; }
    public long? EditedOn { get; set; }
    public int UserId { get; set; }
    public int NumOfVotes { get; set; }
}
