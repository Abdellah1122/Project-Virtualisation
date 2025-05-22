# Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy project files first to leverage Docker cache
COPY ["ProjectVirtuqlisqtion.csproj", "."]
RUN dotnet restore "ProjectVirtuqlisqtion.csproj"

# Copy everything else and build
COPY . .

# ↓ Add explicit wwwroot verification during build
RUN ls -la ./wwwroot/app.css && \
    dotnet publish "ProjectVirtuqlisqtion.csproj" -c Release -o /app/publish

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app

# Copy published files
COPY --from=build /app/publish .

# ↓ Add these health checks and permissions
RUN apt-get update && \
    apt-get install -y --no-install-recommends icu-devtools && \
    rm -rf /var/lib/apt/lists/* && \
    chmod -R 755 /app/wwwroot

# ↓ Verify ALL static files are copied (not just wwwroot)
RUN ls -la /app/wwwroot/app.css

EXPOSE 80
ENTRYPOINT ["dotnet", "ProjectVirtuqlisqtion.dll"]