namespace DebugIt.Domain;

public class User
{
    public int Id { get; set; } = new Random().Next();
    public string Name { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public UserRole Role { get; set; }

    public User() { }
    public User(int id, string name, string lastName, string email, string password, UserRole role)
    {
        Id = id;
        Name = name;
        LastName = lastName;
        Email = email;
        Password = password;
        Role = role;

        Validate();
    }
    private void Validate()
    {
        if (string.IsNullOrWhiteSpace(Name)) throw new ArgumentException("Invalid Name");
        if (string.IsNullOrWhiteSpace(LastName)) throw new ArgumentException("Invalid LastName");
        if (string.IsNullOrWhiteSpace(Email) || !Email.Contains("@")) throw new ArgumentException("Invalid Email");
        if (string.IsNullOrWhiteSpace(Password)) throw new ArgumentException("Invalid Password");
    }
}
public enum UserRole
{
    STUDENT,
    ASSISTANT,
    PROFESSOR,
    ADMINISTRATOR
}

