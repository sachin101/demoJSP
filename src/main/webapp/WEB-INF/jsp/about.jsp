<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot JSP Demo - About</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background: #f5f5f5;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 40px 0;
            text-align: center;
            border-radius: 10px;
            margin-bottom: 30px;
        }
        .header h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }
        .nav {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 30px;
        }
        .nav a {
            text-decoration: none;
            color: #667eea;
            font-weight: 500;
            padding: 10px 20px;
            border: 2px solid #667eea;
            border-radius: 25px;
            transition: all 0.3s ease;
        }
        .nav a:hover {
            background: #667eea;
            color: white;
        }
        .content {
            background: white;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        .section {
            margin-bottom: 30px;
        }
        .section h2 {
            color: #667eea;
            margin-bottom: 15px;
            font-size: 1.5rem;
        }
        .tech-list {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        .tech-item {
            background: #f0f0f0;
            padding: 8px 15px;
            border-radius: 20px;
            font-size: 0.9rem;
        }
        .footer {
            text-align: center;
            margin-top: 40px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>ℹ️ About Our Application</h1>
            <p>Learn more about this Spring Boot JSP demo</p>
        </div>

        <div class="nav">
            <a href="/demo/">Home</a>
            <a href="/demo/products">Products</a>
            <a href="/demo/about">About</a>
        </div>

        <div class="content">
            <div class="section">
                <h2>Application Name</h2>
                <p>${appName}</p>
            </div>

            <div class="section">
                <h2>Description</h2>
                <p>${description}</p>
            </div>

            <div class="section">
                <h2>Technologies Used</h2>
                <div class="tech-list">
                    <c:forEach var="tech" items="${technologies}">
                        <span class="tech-item">${tech}</span>
                    </c:forEach>
                </div>
            </div>

            <div class="section">
                <h2>Features</h2>
                <ul>
                    <li>Responsive web design</li>
                    <li>Spring Boot framework integration</li>
                    <li>JSP templating engine</li>
                    <li>Maven build management</li>
                    <li>Docker containerization</li>
                    <li>Jenkins CI/CD pipeline</li>
                    <li>GitHub integration</li>
                </ul>
            </div>
        </div>

        <div class="footer">
            <p>Spring Boot JSP Demo Application - About Page</p>
        </div>
    </div>
</body>
</html>
