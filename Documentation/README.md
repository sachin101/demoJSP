# Spring Boot JSP Demo Application

A complete demonstration of Spring Boot with JSP templates, including CI/CD pipeline and Docker support.

## Quick Start

### Prerequisites
- Java 17
- Maven 3.6+
- Docker (optional)

### Running Locally
```bash
# Build the application
mvn clean package

# Run the application
java -jar target/demo-0.0.1-SNAPSHOT.jar
```

Access the application at: http://localhost:8080/demo/

## Application Endpoints

- `GET /demo/` - Home page
- `GET /demo/products` - Product listing
- `GET /demo/about` - About page

## Project Structure

```
src/
├── main/
│   ├── java/com/example/demo/
│   │   ├── DemoApplication.java
│   │   └── controller/DemoController.java
│   ├── resources/
│   │   └── application.properties
│   └── webapp/WEB-INF/jsp/
│       ├── index.jsp
│       ├── products.jsp
│       └── about.jsp
├── test/
└── Configuration/
    ├── pom.xml
    ├── Jenkinsfile
    ├── Dockerfile
    ├── docker-compose.yml
    └── .gitignore
```

## Technologies Used

- Java 17
- Spring Boot 3.2.0
- JSP/JSTL
- Maven
- Docker
- Jenkins

## CI/CD Pipeline

The project includes a Jenkins pipeline with the following stages:
1. Checkout - Clone code from GitHub
2. Build - Compile with Maven
3. Test - Run unit tests
4. Package - Create JAR file
5. Archive - Save artifacts

## Docker Support

Build and run with Docker:
```bash
# Build image
docker build -f Configuration/Dockerfile -t demo-app .

# Run container
docker run -p 8080:8080 demo-app
```

Or use Docker Compose:
```bash
docker-compose -f Configuration/docker-compose.yml up --build
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests
5. Submit a pull request

## License

This project is licensed under the MIT License.
