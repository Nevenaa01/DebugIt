INSERT INTO public."Users"(
	"Id", "Name", "LastName", "Email", "Password", "Role")
VALUES
	(-1, 'Admin', 'Admin', 'admin@example.com', 'adminpassword', 3),
	(-2, 'Assistant1', 'Assistant', 'assistant1@example.com', 'password1', 1),
	(-3, 'Assistant2', 'Assistant', 'assistant2@example.com', 'password2', 1),
	(-4, 'Professor', 'Professor', 'professor@example.com', 'profpassword', 2),
	(-5, 'John', 'Smith', 'john.smith@example.com', 'password3', 0),
	(-6, 'Emily', 'Johnson', 'emily.johnson@example.com', 'password4', 0),
	(-7, 'Michael', 'Williams', 'michael.williams@example.com', 'password5', 0),
	(-8, 'Sarah', 'Brown', 'sarah.brown@example.com', 'password6', 0),
	(-9, 'David', 'Jones', 'david.jones@example.com', 'password7', 0),
	(-10, 'Olivia', 'Miller', 'olivia.miller@example.com', 'password8', 0);

INSERT INTO public."Questions" ("Id", "Title", "Description", "PostedOn", "EditedOn", "UserId", "NumOfVotes")
VALUES
    (-1, 'How to implement nested comments in ASP.NET?', 'I need help with implementing nested comments in my ASP.NET application.', '1690884000000', '1690884300000', -5, 0),
    (-2, 'What is Entity Framework Core?', 'Can someone explain what Entity Framework Core is and how to use it?', '1690970400000', '1690971000000', -6, 0),
    (-3, 'Best practices for REST API design?', 'What are some best practices for designing REST APIs?', '1691056800000', '1691057700000', -7, 0),
    (-4, 'How to handle concurrency in EF Core?', 'I am having trouble with concurrency issues in EF Core. Any suggestions?', '1691143200000', '1691144400000', -8, 0),
    (-5, 'What is the difference between .NET Core and .NET Framework?', 'Can someone explain the differences between .NET Core and .NET Framework?', '1691229600000', '1691231100000', -9, 0),
    (-6, 'How to improve performance in ASP.NET Core applications?', 'I am looking for ways to improve the performance of my ASP.NET Core applications.', '1691316000000', '1691317800000', -10, 0),
    (-7, 'How to use dependency injection in ASP.NET Core?', 'I am trying to understand how to implement dependency injection in ASP.NET Core.', '1691402400000', '1691403000000', -5, 0),
    (-8, 'What is the best way to manage database migrations in EF Core?', 'I need advice on managing database migrations effectively in EF Core.', '1691488800000', '1691489700000', -6, 0),
    (-9, 'How to secure ASP.NET Core applications?', 'Can someone provide tips on securing ASP.NET Core applications?', '1691575200000', '1691576400000', -7, 0),
    (-10, 'How to handle file uploads in ASP.NET Core?', 'I need help with implementing file uploads in ASP.NET Core.', '1691661600000', '1691663100000', -8, 0);

