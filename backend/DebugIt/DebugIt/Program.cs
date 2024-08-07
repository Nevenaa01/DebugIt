using DebugIt.Api.Startup;
using DebugIt.Database;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

//Register DbContext
builder.Services.AddDbContext<DebugItContext>(options =>
    {
        options.UseNpgsql(builder.Configuration.GetConnectionString("DefaultConnection"));
    });

builder.Services.AddControllers();
const string corsPolicy = "_corsPolicy";
builder.Services.ConfigureCors(corsPolicy);
builder.Services.RegisterModule();

var app = builder.Build();

app.UseRouting();
app.UseCors(corsPolicy);
//redirecting response code from http to https
app.UseHttpsRedirection();
app.MapControllers();
app.MapGet("/", () => "Implementiraj front");

app.Run();
