POST /user-index/_doc/-1
{
  "Id": -1,
  "Name": "Admin",
  "LastName": "Admin",
  "Email": "admin@example.com",
  "Password": "adminpassword",
  "Role": 3
}

POST /user-index/_doc/-2
{
  "Id": -2,
  "Name": "Assistant1",
  "LastName": "Assistant",
  "Email": "assistant1@example.com",
  "Password": "password1",
  "Role": 1
}

POST /user-index/_doc/-3
{
  "Id": -3,
  "Name": "Assistant2",
  "LastName": "Assistant",
  "Email": "assistant2@example.com",
  "Password": "password2",
  "Role": 1
}

POST /user-index/_doc/-4
{
  "Id": -4,
  "Name": "Professor",
  "LastName": "Professor",
  "Email": "professor@example.com",
  "Password": "profpassword",
  "Role": 2
}

POST /user-index/_doc/-5
{
  "Id": -5,
  "Name": "John",
  "LastName": "Smith",
  "Email": "john.smith@example.com",
  "Password": "password3",
  "Role": 0
}

POST /user-index/_doc/-6
{
  "Id": -6,
  "Name": "Emily",
  "LastName": "Johnson",
  "Email": "emily.johnson@example.com",
  "Password": "password4",
  "Role": 0
}

POST /user-index/_doc/-7
{
  "Id": -7,
  "Name": "Michael",
  "LastName": "Williams",
  "Email": "michael.williams@example.com",
  "Password": "password5",
  "Role": 0
}

POST /user-index/_doc/-8
{
  "Id": -8,
  "Name": "Sarah",
  "LastName": "Brown",
  "Email": "sarah.brown@example.com",
  "Password": "password6",
  "Role": 0
}

POST /user-index/_doc/-9
{
  "Id": -9,
  "Name": "David",
  "LastName": "Jones",
  "Email": "david.jones@example.com",
  "Password": "password7",
  "Role": 0
}

POST /user-index/_doc/-10
{
  "Id": -10,
  "Name": "Olivia",
  "LastName": "Miller",
  "Email": "olivia.miller@example.com",
  "Password": "password8",
  "Role": 0
}


POST /question-index/_doc/-1
{
  "Id": -1,
  "Title": "How to implement nested comments in ASP.NET?",
  "Description": "I need help with implementing nested comments in my ASP.NET application.",
  "PostedOn": 1690884000000,
  "EditedOn": 1690884300000,
  "UserId": -5,
  "NumOfVotes": 0
}

POST /question-index/_doc/-2
{
  "Id": -2,
  "Title": "What is Entity Framework Core?",
  "Description": "Can someone explain what Entity Framework Core is and how to use it?",
  "PostedOn": 1690970400000,
  "EditedOn": 1690971000000,
  "UserId": -6,
  "NumOfVotes": 0
}

POST /question-index/_doc/-3
{
  "Id": -3,
  "Title": "Best practices for REST API design?",
  "Description": "What are some best practices for designing REST APIs?",
  "PostedOn": 1691056800000,
  "EditedOn": 1691057700000,
  "UserId": -7,
  "NumOfVotes": 0
}

POST /question-index/_doc/-4
{
  "Id": -4,
  "Title": "How to handle concurrency in EF Core?",
  "Description": "I am having trouble with concurrency issues in EF Core. Any suggestions?",
  "PostedOn": 1691143200000,
  "EditedOn": 1691144400000,
  "UserId": -8,
  "NumOfVotes": 0
}

POST /question-index/_doc/-5
{
  "Id": -5,
  "Title": "What is the difference between .NET Core and .NET Framework?",
  "Description": "Can someone explain the differences between .NET Core and .NET Framework?",
  "PostedOn": 1691229600000,
  "EditedOn": 1691231100000,
  "UserId": -9,
  "NumOfVotes": 0
}

POST /question-index/_doc/-6
{
  "Id": -6,
  "Title": "How to improve performance in ASP.NET Core applications?",
  "Description": "I am looking for ways to improve the performance of my ASP.NET Core applications.",
  "PostedOn": 1691316000000,
  "EditedOn": 1691317800000,
  "UserId": -10,
  "NumOfVotes": 0
}

POST /question-index/_doc/-7
{
  "Id": -7,
  "Title": "How to use dependency injection in ASP.NET Core?",
  "Description": "I am trying to understand how to implement dependency injection in ASP.NET Core.",
  "PostedOn": 1691402400000,
  "EditedOn": 1691403000000,
  "UserId": -5,
  "NumOfVotes": 0
}

POST /question-index/_doc/-8
{
  "Id": -8,
  "Title": "What is the best way to manage database migrations in EF Core?",
  "Description": "I need advice on managing database migrations effectively in EF Core.",
  "PostedOn": 1691488800000,
  "EditedOn": 1691489700000,
  "UserId": -6,
  "NumOfVotes": 0
}

POST /question-index/_doc/-9
{
  "Id": -9,
  "Title": "How to secure ASP.NET Core applications?",
  "Description": "Can someone provide tips on securing ASP.NET Core applications?",
  "PostedOn": 1691575200000,
  "EditedOn": 1691576400000,
  "UserId": -7,
  "NumOfVotes": 0
}

POST /question-index/_doc/-10
{
  "Id": -10,
  "Title": "How to handle file uploads in ASP.NET Core?",
  "Description": "I need help with implementing file uploads in ASP.NET Core.",
  "PostedOn": 1691661600000,
  "EditedOn": 1691663100000,
  "UserId": -8,
  "NumOfVotes": 0
}

POST /comment-index/_doc/-1
{
  "Id": -1,
  "QuestionId": -1,
  "Description": "You can use a recursive method to implement nested comments.",
  "UserId": -6,
  "PostedOn": 1690890000000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": null
}

POST /comment-index/_doc/-2
{
  "Id": -2,
  "QuestionId": -1,
  "Description": "I think using a tree structure might be more efficient.",
  "UserId": -7,
  "PostedOn": 1690893600000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": null
}

POST /comment-index/_doc/-3
{
  "Id": -3,
  "QuestionId": -2,
  "Description": "EF Core is a lightweight, extensible, and cross-platform version of Entity Framework.",
  "UserId": -8,
  "PostedOn": 1690975000000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": null
}

POST /comment-index/_doc/-4
{
  "Id": -4,
  "QuestionId": -3,
  "Description": "Make sure to follow RESTful principles.",
  "UserId": -9,
  "PostedOn": 1691061300000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": null
}

POST /comment-index/_doc/-5
{
  "Id": -5,
  "QuestionId": -4,
  "Description": "You can use optimistic concurrency with EF Core.",
  "UserId": -10,
  "PostedOn": 1691150000000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": null
}

POST /comment-index/_doc/-6
{
  "Id": -6,
  "QuestionId": -1,
  "Description": "I agree, a recursive method works well for this.",
  "UserId": -5,
  "PostedOn": 1690897200000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": -1
}

POST /comment-index/_doc/-7
{
  "Id": -7,
  "QuestionId": -4,
  "Description": "You might also want to look into pessimistic concurrency.",
  "UserId": -5,
  "PostedOn": 1691157200000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": null
}

POST /comment-index/_doc/-8
{
  "Id": -8,
  "QuestionId": -5,
  "Description": "The main difference is that .NET Core is cross-platform.",
  "UserId": -6,
  "PostedOn": 1691235000000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": null
}

POST /comment-index/_doc/-9
{
  "Id": -9,
  "QuestionId": -6,
  "Description": "Use caching to improve performance.",
  "UserId": -7,
  "PostedOn": 1691322000000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": null
}

POST /comment-index/_doc/-10
{
  "Id": -10,
  "QuestionId": -6,
  "Description": "I agree, caching is very effective.",
  "UserId": -8,
  "PostedOn": 1691328000000,
  "EditedOn": null,
  "NumOfVotes": 0,
  "CommentThreadId": -9
}
