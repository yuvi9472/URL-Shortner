# URL Shortener

A simple URL shortener built with **Java, Spring Boot, PostgreSQL, Redis, and Docker Compose**.

The project maps a short code such as `github` to an original URL and redirects the user to the stored destination. Redis is used as a cache so frequently requested URLs do not need to hit PostgreSQL every time.

## Tech Stack

- **Java 17**
- **Spring Boot 4.1.0**
- **Spring Data JPA / Hibernate**
- **PostgreSQL 18**
- **Redis**
- **Spring Cache**
- **Docker & Docker Compose**
- **Maven**

## Project Structure

```text
demo/
├── docker-compose.yml
├── postgres/
│   ├── init.sql
│   └── seed.sql
├── pom.xml
└── src/
    └── main/
        └── java/
            └── com/
                └── urlshortner/
                    └── demo/
                        ├── controller/
                        ├── exception/
                        ├── model/
                        ├── repository/
                        ├── service/
                        └── DemoApplication.java
```

## How It Works

A request such as:

```text
GET /urls/github
```

is handled by the controller.

The service first checks the Redis cache:

```text
Request
   |
   v
Spring Boot Controller
   |
   v
URL Service
   |
   +---- Redis cache hit ----> Return cached URL
   |
   +---- Cache miss ---------> PostgreSQL
                                  |
                                  v
                           Store result in Redis
                                  |
                                  v
                           Return original URL
```

The response is an HTTP redirect to the stored original URL.

## Database

PostgreSQL stores URL mappings in the `urls` table.

The schema contains:

| Column | Description |
|---|---|
| `id` | Auto-generated primary key |
| `shortcode` | Unique short identifier |
| `original_url` | Destination URL |
| `created_at` | Creation timestamp |
| `click_count` | Number of recorded clicks |

The database is initialized automatically by:

```text
postgres/init.sql
```

Development/test URLs are populated by:

```text
postgres/seed.sql
```

The seed contains 100+ commonly used websites for testing.

## Running the Project

### 1. Start PostgreSQL and Redis

From the directory containing `docker-compose.yml`:

```bash
docker compose up -d
```

Check the containers:

```bash
docker compose ps
```

Both services should show as running.

### 2. Start Spring Boot

Run the application with Maven:

```bash
./mvnw spring-boot:run
```

or run `DemoApplication` directly from your IDE.

The application runs on:

```text
http://localhost:8080
```

## Testing

Example URLs:

```text
http://localhost:8080/urls/youtube
http://localhost:8080/urls/github
http://localhost:8080/urls/google
```

A valid shortcode redirects to its stored destination.

An unknown shortcode returns:

```text
404 Not Found
```

with an appropriate error message.

## Redis Cache

The service uses Spring Cache:

```java
@Cacheable(value = "urls", key = "#shortcode")
```

The cache stores mappings such as:

```text
urls::github -> https://github.com
```

To inspect Redis:

```bash
docker exec -it urlshortner-redis redis-cli
```

Then:

```redis
KEYS *
```

To clear the development cache:

```redis
FLUSHDB
```

## PostgreSQL Access

The PostgreSQL container exposes port `5432`.

The Redis container exposes port `6379`.

You can connect to PostgreSQL using `psql`, pgAdmin, or another PostgreSQL client.

Example:

```bash
docker exec -it urlshortner-postgres psql -U postgres -d urlshortner
```

## Docker Volumes

PostgreSQL uses a named Docker volume:

```text
postgres_data
```

This keeps database data when containers are stopped or recreated.

To remove the containers while keeping the database:

```bash
docker compose down
```

To remove the containers **and the database volume**:

```bash
docker compose down -v
```

The latter causes PostgreSQL to initialize the schema and seed data again the next time it starts.

## Configuration

Spring Boot connects to:

```text
PostgreSQL: localhost:5432
Database:   urlshortner
Redis:      localhost:6379
```

Keep credentials and other secrets out of version control when deploying or sharing the project. For production, use environment variables or a proper secret-management system.

## Current Scope

The current implementation focuses on:

- URL lookup
- HTTP redirects
- PostgreSQL persistence
- Redis caching
- Exception handling
- Dockerized PostgreSQL and Redis
- Automatic database schema creation
- Development seed data

Future improvements could include creating shortcodes through a `POST` endpoint, URL validation, click-count tracking, cache eviction, expiration times, authentication, and automated tests.

## License

This project is for learning and development purposes.
