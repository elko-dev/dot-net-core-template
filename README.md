# dot-net-core-template

App created via tutorial: https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-web-api?view=aspnetcore-3.1&tabs=visual-studio-mac

This is a dot net core 3.X template containing:

1. RESTful API configuration
2. Swagger Docs Configuration
3. Default database connection
4. Dockerized local environment (including build and local MSSQL database)
5. Terraform for Database creation, Azure Queue creation, and Azure App Service creation

In order to leverage this template simply rename all files, directories, and code from ***dot-net-core-template*** to your app name

## Running locally

In order to run the application locally, ensure docker and docker-compose are installed on your machine. Then there are simply two commands:

```bash
docker-compose build
docker-compse up
```

And the app is available by default over port 5000. For example, swagger docs can be found here: http://localhost:5000/swagger/index.html

### TODOS

1. Create environment specific configuration
2. Add CI/CD
3. Add unit tests
4. Finish queue setup

Swagger was configured via the following docs:
https://docs.microsoft.com/en-us/aspnet/core/tutorials/getting-started-with-swashbuckle?view=aspnetcore-3.1&tabs=netcore-cli

Azure queues

https://docs.microsoft.com/en-us/azure/storage/queues/storage-tutorial-queues?tabs=dotnet