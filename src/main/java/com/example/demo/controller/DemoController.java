package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/demo")
public class DemoController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("message", "Welcome to Spring Boot JSP Demo Application!");
        model.addAttribute("version", "1.0.0");
        return "index";
    }

    @GetMapping("/products")
    public String products(Model model) {
        List<Product> products = Arrays.asList(
            new Product("Laptop", "$999.99", "High-performance laptop"),
            new Product("Smartphone", "$699.99", "Latest smartphone"),
            new Product("Tablet", "$399.99", "Portable tablet"),
            new Product("Headphones", "$199.99", "Wireless headphones"),
            new Product("Monitor", "$299.99", "4K monitor"),
            new Product("Keyboard", "$79.99", "Mechanical keyboard"),
            new Product("Mouse", "$49.99", "Wireless mouse"),
            new Product("Printer", "$149.99", "All-in-one printer")
        );
        model.addAttribute("products", products);
        return "products";
    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("appName", "Spring Boot JSP Demo");
        model.addAttribute("description", "A demonstration application showcasing Spring Boot with JSP templates");
        model.addAttribute("technologies", Arrays.asList("Spring Boot", "JSP", "Maven", "Docker"));
        return "about";
    }

    public static class Product {
        private String name;
        private String price;
        private String description;

        public Product(String name, String price, String description) {
            this.name = name;
            this.price = price;
            this.description = description;
        }

        // Getters
        public String getName() { return name; }
        public String getPrice() { return price; }
        public String getDescription() { return description; }
    }
}
