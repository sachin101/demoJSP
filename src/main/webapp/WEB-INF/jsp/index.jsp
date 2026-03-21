<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot JSP Demo - Home</title>
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
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            text-align: center;
            color: white;
            padding: 60px 0;
        }
        .header h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        .header p {
            font-size: 1.2rem;
            opacity: 0.9;
        }
        .content {
            background: white;
            border-radius: 10px;
            padding: 40px;
            margin: 20px 0;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
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
        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }
        .info-card {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            border-left: 4px solid #667eea;
        }
        .info-card h3 {
            color: #667eea;
            margin-bottom: 10px;
        }
        .footer {
            text-align: center;
            color: white;
            padding: 20px 0;
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🚀 Spring Boot JSP Demo</h1>
            <p>${message}</p>
        </div>

        <div class="content">
            <div class="nav">
                <a href="/demo/">Home</a>
                <a href="/demo/products">Products</a>
                <a href="/demo/about">About</a>
            </div>

            <h2>Welcome to the Demo Application</h2>
            <p>This is a complete Spring Boot application with JSP templates, demonstrating modern web development practices.</p>

            <div class="info-grid">
                <div class="info-card">
                    <h3>📱 Responsive Design</h3>
                    <p>Fully responsive layout that works on all devices and screen sizes.</p>
                </div>
                <div class="info-card">
                    <h3>⚡ Fast & Efficient</h3>
                    <p>Built with Spring Boot for optimal performance and scalability.</p>
                </div>
                <div class="info-card">
                    <h3>🛠️ Easy to Extend</h3>
                    <p>Modular architecture makes it simple to add new features and pages.</p>
                </div>
            </div>
        </div>

        <div class="footer">
            <p>Version ${version} | Spring Boot JSP Demo Application</p>
        </div>
    </div>
</body>
</html>
