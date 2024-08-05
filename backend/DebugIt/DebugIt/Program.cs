using DebugIt.Context;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

//Register DbContext
builder.Services.AddDbContext<DebugItContext>(options =>
    {
        options.UseNpgsql(builder.Configuration.GetConnectionString("DefaultConnection"));
    });

var app = builder.Build();

app.MapGet("/", () => "Hello World!");

app.Run();
