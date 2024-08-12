POST /user-index/_doc/-1
{
  "id": -1,
  "name": "Admin",
  "lastName": "Admin",
  "email": "admin@example.com",
  "password": "adminpassword",
  "role": 3
}

POST /user-index/_doc/-2
{
  "id": -2,
  "name": "Assistant1",
  "lastName": "Assistant",
  "email": "assistant1@example.com",
  "password": "password1",
  "role": 1
}

POST /user-index/_doc/-3
{
  "id": -3,
  "name": "Assistant2",
  "lastName": "Assistant",
  "email": "assistant2@example.com",
  "password": "password2",
  "role": 1
}

POST /user-index/_doc/-4
{
  "id": -4,
  "name": "Professor",
  "lastName": "Professor",
  "email": "professor@example.com",
  "password": "profpassword",
  "role": 2
}

POST /user-index/_doc/-5
{
  "id": -5,
  "name": "John",
  "lastName": "Smith",
  "email": "john.smith@example.com",
  "password": "password3",
  "role": 0
}

POST /user-index/_doc/-6
{
  "id": -6,
  "name": "Emily",
  "lastName": "Johnson",
  "email": "emily.johnson@example.com",
  "password": "password4",
  "role": 0
}

POST /user-index/_doc/-7
{
  "id": -7,
  "name": "Michael",
  "lastName": "Williams",
  "email": "michael.williams@example.com",
  "password": "password5",
  "role": 0
}

POST /user-index/_doc/-8
{
  "id": -8,
  "name": "Sarah",
  "lastName": "Brown",
  "email": "sarah.brown@example.com",
  "password": "password6",
  "role": 0
}

POST /user-index/_doc/-9
{
  "id": -9,
  "name": "David",
  "lastName": "Jones",
  "email": "david.jones@example.com",
  "password": "password7",
  "role": 0
}

POST /user-index/_doc/-10
{
  "id": -10,
  "name": "Olivia",
  "lastName": "Miller",
  "email": "olivia.miller@example.com",
  "password": "password8",
  "role": 0
}

POST /question-index/_doc/-1
{
  "id": -1,
  "title": "How to implement nested comments in ASP.NET?",
  "description": "I need help with implementing nested comments in my ASP.NET application.",
  "postedOn": 1690884000000,
  "editedOn": 1690884300000,
  "userId": -5,
  "numOfVotes": 0
}

POST /question-index/_doc/-2
{
  "id": -2,
  "title": "What is Entity Framework Core?",
  "description": "Can someone explain what Entity Framework Core is and how to use it?",
  "postedOn": 1690970400000,
  "editedOn": 1690971000000,
  "userId": -6,
  "numOfVotes": 0
}

POST /question-index/_doc/-3
{
  "id": -3,
  "title": "Best practices for REST API design?",
  "description": "What are some best practices for designing REST APIs?",
  "postedOn": 1691056800000,
  "editedOn": 1691057700000,
  "userId": -7,
  "numOfVotes": 0
}

POST /question-index/_doc/-4
{
  "id": -4,
  "title": "How to handle concurrency in EF Core?",
  "description": "I am having trouble with concurrency issues in EF Core. Any suggestions?",
  "postedOn": 1691143200000,
  "editedOn": 1691144400000,
  "userId": -8,
  "numOfVotes": 0
}

POST /question-index/_doc/-5
{
  "id": -5,
  "title": "What is the difference between .NET Core and .NET Framework?",
  "description": "Can someone explain the differences between .NET Core and .NET Framework?",
  "postedOn": 1691229600000,
  "editedOn": 1691231100000,
  "userId": -9,
  "numOfVotes": 0
}

POST /question-index/_doc/-6
{
  "id": -6,
  "title": "How to improve performance in ASP.NET Core applications?",
  "description": "I am looking for ways to improve the performance of my ASP.NET Core applications.",
  "postedOn": 1691316000000,
  "editedOn": 1691317800000,
  "userId": -10,
  "numOfVotes": 0
}

POST /question-index/_doc/-7
{
  "id": -7,
  "title": "How to use dependency injection in ASP.NET Core?",
  "description": "I am trying to understand how to implement dependency injection in ASP.NET Core.",
  "postedOn": 1691402400000,
  "editedOn": 1691403000000,
  "userId": -5,
  "numOfVotes": 0
}

POST /question-index/_doc/-8
{
  "id": -8,
  "title": "What is the best way to manage database migrations in EF Core?",
  "description": "I need advice on managing database migrations effectively in EF Core.",
  "postedOn": 1691488800000,
  "editedOn": 1691489700000,
  "userId": -6,
  "numOfVotes": 0
}

POST /question-index/_doc/-9
{
  "id": -9,
  "title": "How to secure ASP.NET Core applications?",
  "description": "Can someone provide tips on securing ASP.NET Core applications?",
  "postedOn": 1691575200000,
  "editedOn": 1691576400000,
  "userId": -7,
  "numOfVotes": 0
}

POST /question-index/_doc/-10
{
  "id": -10,
  "title": "How to handle file uploads in ASP.NET Core?",
  "description": "I need help with implementing file uploads in ASP.NET Core.",
  "postedOn": 1691661600000,
  "editedOn": 1691663100000,
  "userId": -8,
  "numOfVotes": 0
}

POST /comment-index/_doc/-1
{
  "id": -1,
  "questionId": -1,
  "description": "You can use a recursive method to implement nested comments.",
  "userId": -6,
  "postedOn": 1690890000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-2
{
  "id": -2,
  "questionId": -1,
  "description": "I think using a tree structure might be more efficient.",
  "userId": -7,
  "postedOn": 1690893600000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-3
{
  "id": -3,
  "questionId": -2,
  "description": "EF Core is a lightweight, extensible, and cross-platform version of Entity Framework.",
  "userId": -8,
  "postedOn": 1690975000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-4
{
  "id": -4,
  "questionId": -3,
  "description": "Make sure to follow RESTful principles.",
  "userId": -9,
  "postedOn": 1691061300000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-5
{
  "id": -5,
  "questionId": -4,
  "description": "You can use optimistic concurrency with EF Core.",
  "userId": -10,
  "postedOn": 1691150000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-6
{
  "id": -6,
  "questionId": -1,
  "description": "I agree, a recursive method works well for this.",
  "userId": -5,
  "postedOn": 1690897200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -1
}

POST /comment-index/_doc/-7
{
  "id": -7,
  "questionId": -4,
  "description": "You might also want to look into pessimistic concurrency.",
  "userId": -5,
  "postedOn": 1691157200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-8
{
  "id": -8,
  "questionId": -5,
  "description": "The main difference is that .NET Core is cross-platform.",
  "userId": -6,
  "postedOn": 1691235000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-9
{
  "id": -9,
  "questionId": -6,
  "description": "Use caching to improve performance.",
  "userId": -7,
  "postedOn": 1691322000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-10
{
  "id": -10,
  "questionId": -6,
  "description": "I agree, caching is very effective.",
  "userId": -8,
  "postedOn": 1691328000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -9
}