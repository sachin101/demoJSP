<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot JSP Demo - Products</title>
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
            max-width: 1200px;
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
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }
        .product-card {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        .product-card:hover {
            transform: translateY(-5px);
        }
        .product-name {
            font-size: 1.5rem;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
        }
        .product-price {
            font-size: 1.2rem;
            color: #667eea;
            font-weight: 600;
            margin-bottom: 10px;
        }
        .product-description {
            color: #666;
            line-height: 1.5;
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
            <h1>🛍️ Our Products</h1>
            <p>Discover our amazing collection of products</p>
        </div>

        <div class="nav">
            <a href="/demo/">Home</a>
            <a href="/demo/products">Products</a>
            <a href="/demo/about">About</a>
        </div>

        <div class="products-grid">
            <c:forEach var="product" items="${products}">
                <div class="product-card">
                    <div class="product-name">${product.name}</div>
                    <div class="product-price">${product.price}</div>
                    <div class="product-description">${product.description}</div>
                </div>
            </c:forEach>
        </div>

        <div class="footer">
            <p>Spring Boot JSP Demo Application - Products Page</p>
        </div>
    </div>
</body>
</html>
