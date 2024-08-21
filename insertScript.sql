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
  "userId": -1,
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
  "userId": -2,
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
  "userId": -3,
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
  "userId": -4,
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
  "userId": -5,
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
  "userId": -6,
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
  "userId": -7,
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
  "userId": -8,
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
  "userId": -9,
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
  "userId": -10,
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
  "userId": -1,
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
  "userId": -2,
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

POST /comment-index/_doc/-11
{
  "id": -11,
  "questionId": -1,
  "description": "Slažem se, rekurzivna metoda dobro funkcioniše za ovo.",
  "userId": -5,
  "postedOn": 1690897200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-12
{
  "id": -12,
  "questionId": -1,
  "description": "Mislim da bi korišćenje strukture stabla moglo biti efikasnije.",
  "userId": -6,
  "postedOn": 1690900800000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-13
{
  "id": -13,
  "questionId": -1,
  "description": "Možeš da dodas još detalja o implementaciji.",
  "userId": -7,
  "postedOn": 1690904400000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -11
}

POST /comment-index/_doc/-14
{
  "id": -14,
  "questionId": -1,
  "description": "Da, dodatni primeri bi bili korisni.",
  "userId": -8,
  "postedOn": 1690908000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -11
}

POST /comment-index/_doc/-15
{
  "id": -15,
  "questionId": -1,
  "description": "Kao dodatak, možeš istražiti i alternative.",
  "userId": -9,
  "postedOn": 1690911600000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -12
}

POST /comment-index/_doc/-16
{
  "id": -16,
  "questionId": -1,
  "description": "Razumem tvoju tačku, ali možda bi trebali dodati još nekoliko primera.",
  "userId": -10,
  "postedOn": 1690915200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -13
}

POST /comment-index/_doc/-17
{
  "id": -17,
  "questionId": -1,
  "description": "Slažem se, primeri su ključni za bolje razumevanje.",
  "userId": -1,
  "postedOn": 1690918800000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -13
}

POST /comment-index/_doc/-18
{
  "id": -18,
  "questionId": -1,
  "description": "Kao dodatak, možete istražiti različite pristupe za optimizaciju.",
  "userId": -2,
  "postedOn": 1690922400000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -15
}

POST /comment-index/_doc/-19
{
  "id": -19,
  "questionId": -1,
  "description": "Takođe, razmislite o mogućim problemima i rešenjima.",
  "userId": -3,
  "postedOn": 1690926000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -15
}

POST /comment-index/_doc/-1
{
  "id": -1,
  "questionId": -1,
  "description": "Možeš koristiti rekurzivne metode za implementaciju ugnježdenih komentara.",
  "userId": -5,
  "postedOn": 1690890000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-2
{
  "id": -2,
  "questionId": -2,
  "description": "Mislim da bi korišćenje strukture stabla moglo biti efikasnije.",
  "userId": -6,
  "postedOn": 1690893600000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-3
{
  "id": -3,
  "questionId": -3,
  "description": "EF Core je lagana, proširiva i cross-platform verzija Entity Framework-a.",
  "userId": -7,
  "postedOn": 1690975000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-4
{
  "id": -4,
  "questionId": -4,
  "description": "Obavezno prati RESTful principe.",
  "userId": -8,
  "postedOn": 1691061300000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-5
{
  "id": -5,
  "questionId": -5,
  "description": "Možeš koristiti optimističku konkurenciju sa EF Core-om.",
  "userId": -9,
  "postedOn": 1691150000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-6
{
  "id": -6,
  "questionId": -6,
  "description": "Možda bi trebalo da razmotriš i pesimističku konkurenciju.",
  "userId": -10,
  "postedOn": 1691157200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-7
{
  "id": -7,
  "questionId": -7,
  "description": "Glavna razlika je što je .NET Core cross-platformski.",
  "userId": -5,
  "postedOn": 1691235000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-8
{
  "id": -8,
  "questionId": -8,
  "description": "Koristi keširanje za poboljšanje performansi.",
  "userId": -6,
  "postedOn": 1691322000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-9
{
  "id": -9,
  "questionId": -9,
  "description": "Slažem se, keširanje je vrlo efikasno.",
  "userId": -7,
  "postedOn": 1691328000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-10
{
  "id": -10,
  "questionId": -10,
  "description": "Možeš da dodas još detalja o implementaciji.",
  "userId": -8,
  "postedOn": 1690904400000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-11
{
  "id": -11,
  "questionId": -11,
  "description": "Da, dodatni primeri bi bili korisni.",
  "userId": -9,
  "postedOn": 1690908000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-12
{
  "id": -12,
  "questionId": -12,
  "description": "Kao dodatak, možeš istražiti i alternative.",
  "userId": -10,
  "postedOn": 1690911600000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-13
{
  "id": -13,
  "questionId": -13,
  "description": "Razumem tvoju tačku, ali možda bi trebali dodati još nekoliko primera.",
  "userId": -5,
  "postedOn": 1690915200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-14
{
  "id": -14,
  "questionId": -14,
  "description": "Slažem se, primeri su ključni za bolje razumevanje.",
  "userId": -6,
  "postedOn": 1690918800000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-15
{
  "id": -15,
  "questionId": -15,
  "description": "Kao dodatak, možete istražiti različite pristupe za optimizaciju.",
  "userId": -7,
  "postedOn": 1690922400000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-16
{
  "id": -16,
  "questionId": -16,
  "description": "Takođe, razmislite o mogućim problemima i rešenjima.",
  "userId": -8,
  "postedOn": 1690926000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-17
{
  "id": -17,
  "questionId": -17,
  "description": "Možeš koristiti rekurzivne metode za implementaciju ugnježdenih komentara.",
  "userId": -9,
  "postedOn": 1690890000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-18
{
  "id": -18,
  "questionId": -18,
  "description": "Mislim da bi korišćenje strukture stabla moglo biti efikasnije.",
  "userId": -10,
  "postedOn": 1690893600000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-19
{
  "id": -19,
  "questionId": -19,
  "description": "EF Core je lagana, proširiva i cross-platform verzija Entity Framework-a.",
  "userId": -5,
  "postedOn": 1690975000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-20
{
  "id": -20,
  "questionId": -20,
  "description": "Obavezno prati RESTful principe.",
  "userId": -6,
  "postedOn": 1691061300000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-21
{
  "id": -21,
  "questionId": -21,
  "description": "Možeš koristiti optimističku konkurenciju sa EF Core-om.",
  "userId": -7,
  "postedOn": 1691150000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-22
{
  "id": -22,
  "questionId": -22,
  "description": "Možda bi trebalo da razmotriš i pesimističku konkurenciju.",
  "userId": -8,
  "postedOn": 1691157200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-23
{
  "id": -23,
  "questionId": -1,
  "description": "Slažem se sa predlogom o rekurzivnim metodama, veoma su korisne.",
  "userId": -9,
  "postedOn": 1691242200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-24
{
  "id": -24,
  "questionId": -2,
  "description": "Struktura stabla može olakšati pretragu i manipulaciju podacima.",
  "userId": -10,
  "postedOn": 1691249400000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-25
{
  "id": -25,
  "questionId": -3,
  "description": "Pored Entity Framework-a, Dapper je još jedna odlična opcija.",
  "userId": -5,
  "postedOn": 1691335800000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-26
{
  "id": -26,
  "questionId": -4,
  "description": "RESTful principi osiguravaju skalabilnost i održivost.",
  "userId": -6,
  "postedOn": 1691422100000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-27
{
  "id": -27,
  "questionId": -5,
  "description": "Optimizacija konkurentnosti može znatno poboljšati performanse.",
  "userId": -7,
  "postedOn": 1691508400000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-28
{
  "id": -28,
  "questionId": -6,
  "description": "Pesimistička konkurencija je bolja za kritične sekcije koda.",
  "userId": -8,
  "postedOn": 1691594700000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-29
{
  "id": -29,
  "questionId": -7,
  "description": ".NET Core nudi veliku fleksibilnost u razvoju aplikacija.",
  "userId": -9,
  "postedOn": 1691681000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-30
{
  "id": -30,
  "questionId": -8,
  "description": "Keširanje podataka može znatno smanjiti opterećenje baze.",
  "userId": -10,
  "postedOn": 1691767300000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": null
}

POST /comment-index/_doc/-31
{
  "id": -31,
  "questionId": -1,
  "description": "Odlična ideja! Rekurzija može pojednostaviti kod.",
  "userId": -6,
  "postedOn": 1691343000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -1
}

POST /comment-index/_doc/-32
{
  "id": -32,
  "questionId": -2,
  "description": "Slažem se, struktura stabla je veoma moćna.",
  "userId": -7,
  "postedOn": 1691439300000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -2
}

POST /comment-index/_doc/-33
{
  "id": -33,
  "questionId": -3,
  "description": "EF Core je sjajan, ali Dapper je odličan za brzinu.",
  "userId": -8,
  "postedOn": 1691525600000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -3
}

POST /comment-index/_doc/-34
{
  "id": -34,
  "questionId": -4,
  "description": "RESTful pristup pomaže i u standardizaciji API-ja.",
  "userId": -9,
  "postedOn": 1691611900000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -4
}

POST /comment-index/_doc/-35
{
  "id": -35,
  "questionId": -5,
  "description": "Optimizacija konkurentnosti zahteva pažljivo planiranje.",
  "userId": -10,
  "postedOn": 1691698200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -5
}

POST /comment-index/_doc/-36
{
  "id": -36,
  "questionId": -6,
  "description": "Pesimistička konkurencija osigurava sigurnost podataka.",
  "userId": -5,
  "postedOn": 1691784500000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -6
}

POST /comment-index/_doc/-37
{
  "id": -37,
  "questionId": -7,
  "description": "Takođe, .NET Core se brzo razvija i unapređuje.",
  "userId": -6,
  "postedOn": 1691870800000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -7
}

POST /comment-index/_doc/-38
{
  "id": -38,
  "questionId": -8,
  "description": "Keširanje može drastično poboljšati odziv aplikacije.",
  "userId": -7,
  "postedOn": 1691957100000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -8
}

POST /comment-index/_doc/-39
{
  "id": -39,
  "questionId": -9,
  "description": "Slažem se, keširanje je važno za performanse.",
  "userId": -8,
  "postedOn": 1692043400000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -9
}

POST /comment-index/_doc/-40
{
  "id": -40,
  "questionId": -10,
  "description": "Dodavanje više detalja može poboljšati razumevanje.",
  "userId": -9,
  "postedOn": 1692129700000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -10
}

POST /comment-index/_doc/-41
{
  "id": -41,
  "questionId": -11,
  "description": "Primeri pomažu u prikazivanju različitih mogućnosti.",
  "userId": -10,
  "postedOn": 1692216000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -11
}

POST /comment-index/_doc/-42
{
  "id": -42,
  "questionId": -12,
  "description": "Alternativne metode mogu biti vrlo korisne.",
  "userId": -5,
  "postedOn": 1692302300000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -12
}

POST /comment-index/_doc/-43
{
  "id": -43,
  "questionId": -13,
  "description": "Još primera bi dodatno osnažilo tvoju poentu.",
  "userId": -6,
  "postedOn": 1692388600000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -13
}

POST /comment-index/_doc/-44
{
  "id": -44,
  "questionId": -14,
  "description": "Primeri su ključni za ilustraciju koncepata.",
  "userId": -7,
  "postedOn": 1692474900000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -14
}

POST /comment-index/_doc/-45
{
  "id": -45,
  "questionId": -15,
  "description": "Optimizacija je važna, razmislite o alternativama.",
  "userId": -8,
  "postedOn": 1692561200000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -15
}

POST /comment-index/_doc/-46
{
  "id": -46,
  "questionId": -16,
  "description": "Identifikovanje potencijalnih problema je ključno.",
  "userId": -9,
  "postedOn": 1692647500000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -16
}

POST /comment-index/_doc/-47
{
  "id": -47,
  "questionId": -17,
  "description": "Rekurzivne metode mogu biti vrlo korisne.",
  "userId": -10,
  "postedOn": 1692733800000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -17
}

POST /comment-index/_doc/-48
{
  "id": -48,
  "questionId": -18,
  "description": "Struktura stabla može poboljšati organizaciju podataka.",
  "userId": -5,
  "postedOn": 1692820100000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -18
}

POST /comment-index/_doc/-49
{
  "id": -49,
  "questionId": -19,
  "description": "EF Core je odličan, ali Dapper je bolji za performanse.",
  "userId": -6,
  "postedOn": 1692906400000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -19
}

POST /comment-index/_doc/-50
{
  "id": -50,
  "questionId": -20,
  "description": "RESTful principi pomažu u razvoju skalabilnih aplikacija.",
  "userId": -7,
  "postedOn": 1692992700000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -20
}

POST /comment-index/_doc/-51
{
  "id": -51,
  "questionId": -21,
  "description": "Optimizacija konkurentnosti zahteva detaljno planiranje.",
  "userId": -8,
  "postedOn": 1693079000000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -21
}

POST /comment-index/_doc/-52
{
  "id": -52,
  "questionId": -22,
  "description": "Pesimistička konkurencija može biti korisna u određenim slučajevima.",
  "userId": -9,
  "postedOn": 1693165300000,
  "editedOn": null,
  "numOfVotes": 0,
  "commentThreadId": -22
}