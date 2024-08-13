POST /user-index/_doc/-1
{
  "id": -1,
  "name": "Administrator",
  "lastName": "Administrator",
  "email": "administrator@example.com",
  "password": "administrator123",
  "role": 3
}

POST /user-index/_doc/-2
{
  "id": -2,
  "name": "Asistent1",
  "lastName": "Asistent",
  "email": "asistent1@example.com",
  "password": "lozinka1",
  "role": 1
}

POST /user-index/_doc/-3
{
  "id": -3,
  "name": "Asistent2",
  "lastName": "Asistent",
  "email": "asistent2@example.com",
  "password": "lozinka2",
  "role": 1
}

POST /user-index/_doc/-4
{
  "id": -4,
  "name": "Profesor",
  "lastName": "Profesor",
  "email": "profesor@example.com",
  "password": "profesor123",
  "role": 2
}

POST /user-index/_doc/-5
{
  "id": -5,
  "name": "Jovan",
  "lastName": "Smit",
  "email": "jovan.smit@example.com",
  "password": "lozinka3",
  "role": 0
}

POST /user-index/_doc/-6
{
  "id": -6,
  "name": "Emilija",
  "lastName": "Džonson",
  "email": "emilija.džonson@example.com",
  "password": "lozinka4",
  "role": 0
}

POST /user-index/_doc/-7
{
  "id": -7,
  "name": "Mihailo",
  "lastName": "Vijams",
  "email": "mihailo.vijams@example.com",
  "password": "lozinka5",
  "role": 0
}

POST /user-index/_doc/-8
{
  "id": -8,
  "name": "Sara",
  "lastName": "Braun",
  "email": "sara.braun@example.com",
  "password": "lozinka6",
  "role": 0
}

POST /user-index/_doc/-9
{
  "id": -9,
  "name": "David",
  "lastName": "Džons",
  "email": "david.džons@example.com",
  "password": "lozinka7",
  "role": 0
}

POST /user-index/_doc/-10
{
  "id": -10,
  "name": "Olivia",
  "lastName": "Miler",
  "email": "olivia.miler@example.com",
  "password": "lozinka8",
  "role": 0
}

POST /question-index/_doc/-1
{
  "id": -1,
  "title": "Kako implementirati ugnježdene komentare u ASP.NET?",
  "description": "Potreban mi je pomoć u implementaciji ugnježdenih komentara u mojoj ASP.NET aplikaciji.",
  "postedOn": 1690884000000,
  "editedOn": 1690884300000,
  "userId": -5,
  "numOfVotes": 0,
  "tags": ["asp.net", "c#"]
}

POST /question-index/_doc/-2
{
  "id": -2,
  "title": "Šta je Entity Framework Core?",
  "description": "Može li neko objasniti šta je Entity Framework Core i kako se koristi?",
  "postedOn": 1690970400000,
  "editedOn": 1690971000000,
  "userId": -6,
  "numOfVotes": 0,
  "tags": ["entity-framework-core", "orm", "c#"]
}

POST /question-index/_doc/-3
{
  "id": -3,
  "title": "Koje su najbolje prakse za dizajn REST API-ja?",
  "description": "Koje su najbolje prakse za dizajniranje REST API-ja?",
  "postedOn": 1691056800000,
  "editedOn": 1691057700000,
  "userId": -7,
  "numOfVotes": 0,
  "tags": ["rest"]
}

POST /question-index/_doc/-4
{
  "id": -4,
  "title": "Kako rešiti probleme sa konkurencijom u EF Core?",
  "description": "Imam problema sa problemima konkurencije u EF Core. Ima li neko predlog?",
  "postedOn": 1691143200000,
  "editedOn": 1691144400000,
  "userId": -8,
  "numOfVotes": 0,
  "tags": ["entity-framework-core", "concurrency", "c#"]
}

POST /question-index/_doc/-5
{
  "id": -5,
  "title": "Koja je razlika između .NET Core i .NET Framework?",
  "description": "Može li neko objasniti razlike između .NET Core i .NET Framework?",
  "postedOn": 1691229600000,
  "editedOn": 1691231100000,
  "userId": -9,
  "numOfVotes": 0,
  "tags": [".net-core", ".net"]
}

POST /question-index/_doc/-6
{
  "id": -6,
  "title": "Kako poboljšati performanse u ASP.NET Core aplikacijama?",
  "description": "Tražim načine da poboljšam performanse svojih ASP.NET Core aplikacija.",
  "postedOn": 1691316000000,
  "editedOn": 1691317800000,
  "userId": -10,
  "numOfVotes": 0,
  "tags": ["asp.net-core", "performance", "optimization"]
}

POST /question-index/_doc/-7
{
  "id": -7,
  "title": "Kako koristiti dependency injection u ASP.NET Core?",
  "description": "Pokušavam da razumem kako da implementiram dependency injection u ASP.NET Core.",
  "postedOn": 1691402400000,
  "editedOn": 1691403000000,
  "userId": -5,
  "numOfVotes": 0,
  "tags": ["asp.net-core", "dependency-injection", "c#"]
}

POST /question-index/_doc/-8
{
  "id": -8,
  "title": "Koji je najbolji način za upravljanje migracijama baze podataka u EF Core?",
  "description": "Potreban mi je savet o efikasnom upravljanju migracijama baze podataka u EF Core.",
  "postedOn": 1691488800000,
  "editedOn": 1691489700000,
  "userId": -6,
  "numOfVotes": 0,
  "tags": ["entity-framework-core", "database-migrations", "c#"]
}

POST /question-index/_doc/-9
{
  "id": -9,
  "title": "Kako obezbediti ASP.NET Core aplikacije?",
  "description": "Može li neko pružiti savete o obezbeđivanju ASP.NET Core aplikacija?",
  "postedOn": 1691575200000,
  "editedOn": 1691576400000,
  "userId": -7,
  "numOfVotes": 0,
  "tags": ["asp.net-core", "security"]
}

POST /question-index/_doc/-10
{
  "id": -10,
  "title": "Kako implementirati učitavanje fajlova u ASP.NET Core?",
  "description": "Potreban mi je pomoć u implementaciji učitavanja fajlova u ASP.NET Core.",
  "postedOn": 1691661600000,
  "editedOn": 1691663100000,
  "userId": -8,
  "numOfVotes": 0,
  "tags": ["asp.net-core", "file-uploads", "c#"]
}

POST /question-index/_doc/-11
{
  "id": -11,
  "title": "Kako implementirati dependency injection u Spring-u?",
  "description": "Potreban mi je pomoć u implementaciji dependency injection u mojoj Spring aplikaciji.",
  "postedOn": 1691748000000,
  "editedOn": 1691748300000,
  "userId": -11,
  "numOfVotes": 0,
  "tags": ["spring", "dependency-injection", "java"]
}

POST /question-index/_doc/-12
{
  "id": -12,
  "title": "Šta je Hibernate ORM?",
  "description": "Može li neko objasniti šta je Hibernate ORM i kako se koristi?",
  "postedOn": 1691834400000,
  "editedOn": 1691835000000,
  "userId": -12,
  "numOfVotes": 0,
  "tags": ["hibernate", "orm", "java"]
}

POST /question-index/_doc/-13
{
  "id": -13,
  "title": "Kako koristiti Lambda izraze u C#?",
  "description": "Tražim informacije o tome kako koristiti Lambda izraze u C#.",
  "postedOn": 1691920800000,
  "editedOn": 1691921400000,
  "userId": -13,
  "numOfVotes": 0,
  "tags": ["c#", "lambda-expressions"]
}

POST /question-index/_doc/-14
{
  "id": -14,
  "title": "Koje su prednosti korišćenja ASP.NET Core?",
  "description": "Koje su glavne prednosti korišćenja ASP.NET Core u odnosu na ASP.NET Framework?",
  "postedOn": 1692007200000,
  "editedOn": 1692007800000,
  "userId": -14,
  "numOfVotes": 0,
  "tags": ["asp.net-core", "benefits"]
}

POST /question-index/_doc/-15
{
  "id": -15,
  "title": "Kako postaviti konfiguraciju za EF Core u ASP.NET Core aplikaciji?",
  "description": "Kako da postavim konfiguraciju za Entity Framework Core u ASP.NET Core aplikaciji?",
  "postedOn": 1692093600000,
  "editedOn": 1692094200000,
  "userId": -15,
  "numOfVotes": 0,
  "tags": ["entity-framework-core", "asp.net-core", "configuration"]
}

POST /question-index/_doc/-16
{
  "id": -16,
  "title": "Kako implementirati Promises u JavaScript-u?",
  "description": "Treba mi pomoć u razumevanju i implementaciji Promises u JavaScript-u.",
  "postedOn": 1692180000000,
  "editedOn": 1692180600000,
  "userId": -16,
  "numOfVotes": 0,
  "tags": ["javascript", "promises", "async"]
}

POST /question-index/_doc/-17
{
  "id": -17,
  "title": "Šta je Node.js?",
  "description": "Može li neko objasniti šta je Node.js i kako se koristi?",
  "postedOn": 1692266400000,
  "editedOn": 1692267000000,
  "userId": -17,
  "numOfVotes": 0,
  "tags": ["node.js", "javascript", "backend"]
}

POST /question-index/_doc/-18
{
  "id": -18,
  "title": "Najbolje prakse za dizajn REST API-ja u Express-u?",
  "description": "Koje su najbolje prakse za dizajn REST API-ja u Express-u?",
  "postedOn": 1692352800000,
  "editedOn": 1692353400000,
  "userId": -18,
  "numOfVotes": 0,
  "tags": ["express", "rest", "javascript"]
}

POST /question-index/_doc/-19
{
  "id": -19,
  "title": "Kako implementirati background poslove u Ruby on Rails-u?",
  "description": "Treba mi pomoć u implementaciji background poslova u mojoj Ruby on Rails aplikaciji.",
  "postedOn": 1692439200000,
  "editedOn": 1692439800000,
  "userId": -19,
  "numOfVotes": 0,
  "tags": ["ruby-on-rails", "background-jobs", "ruby"]
}

POST /question-index/_doc/-20
{
  "id": -20,
  "title": "Šta je Active Record u Ruby on Rails-u?",
  "description": "Može li neko objasniti šta je Active Record i kako se koristi?",
  "postedOn": 1692525600000,
  "editedOn": 1692526200000,
  "userId": -20,
  "numOfVotes": 0,
  "tags": ["active-record", "orm", "ruby"]
}

POST /question-index/_doc/-21
{
  "id": -21,
  "title": "Najbolje prakse za dizajn REST API-ja u Ruby on Rails-u?",
  "description": "Koje su najbolje prakse za dizajn REST API-ja u Ruby on Rails-u?",
  "postedOn": 1692612000000,
  "editedOn": 1692612600000,
  "userId": -21,
  "numOfVotes": 0,
  "tags": ["ruby-on-rails", "rest", "ruby"]
}

POST /question-index/_doc/-22
{
  "id": -22,
  "title": "Najbolje prakse za dizajn REST API-ja u Ruby on Rails-u?",
  "description": "Koje su najbolje prakse za dizajn REST API-ja u Ruby on Rails-u?",
  "postedOn": 1692698400000,
  "editedOn": 1692699300000,
  "userId": -22,
  "numOfVotes": 0,
  "tags": ["ruby-on-rails", "rest", "ruby"]
}

POST /comment-index/_doc/-1
{
  "id": -1,
  "questionId": -1,
  "description": "Možeš koristiti rekurzivne metode za implementaciju ugnježdenih komentara.",
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
  "description": "Mislim da bi korišćenje strukture stabla moglo biti efikasnije.",
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
  "description": "EF Core je lagana, proširiva i cross-platform verzija Entity Framework-a.",
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
  "description": "Obavezno prati RESTful principe.",
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
  "description": "Možeš koristiti optimističku konkurenciju sa EF Core-om.",
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
  "description": "Slažem se, rekurzivna metoda dobro funkcioniše za ovo.",
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
  "description": "Možda bi trebalo da razmotriš i pesimističku konkurenciju.",
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
  "description": "Glavna razlika je što je .NET Core cross-platformski.",
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
  "description": "Koristi keširanje za poboljšanje performansi.",
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
  "description": "Slažem se, keširanje je vrlo efikasno.",
  "userId": -8,
  "postedOn": 1691328000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -9
}