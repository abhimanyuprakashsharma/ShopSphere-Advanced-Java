<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.shopsphere.model.User" %>
<%@ page import="com.shopsphere.model.Product" %>
<%@ page import="com.shopsphere.dao.ProductDAO" %>
<%@ page import="java.util.List" %>
<%
    User u = (User) session.getAttribute("loggedInUser");
    List<Product> featuredProducts;
    try {
        featuredProducts = new ProductDAO().search(null, 0, "newest", 1, 8);
    } catch (Exception e) {
        featuredProducts = java.util.Collections.emptyList();
    }
    String ctx = request.getContextPath();
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopSphere — Modern Shopping, Refined for Everyday</title>
    <meta name="description" content="ShopSphere — A state-of-the-art Advanced Java e-commerce experience featuring curated technology, timeless books and modern fashion.">
    <link rel="stylesheet" href="<%= ctx %>/assets/css/app.css">
</head>
<body>

<!-- Announcement Bar -->
<div class="announcement-bar">
    <span>✦ <strong>COMPLIMENTARY EXPRESS SHIPPING</strong> ON ALL ORDERS ABOVE ₹999 ✦</span>
</div>

<!-- Header Navigation -->
<header class="nav-header">
    <div class="container nav-inner">
        <nav class="nav-menu">
            <a class="nav-link active" href="<%= ctx %>/">Storefront</a>
            <a class="nav-link" href="<%= ctx %>/products">Collections</a>
            <a class="nav-link" href="<%= ctx %>/products?category=1">Technology</a>
            <a class="nav-link" href="<%= ctx %>/products?category=3">Fashion</a>
            <a class="nav-link" href="<%= ctx %>/products?category=2">Books</a>
        </nav>
        <a class="brand-logo" href="<%= ctx %>/">ShopSphere</a>
        <div>
            <a class="btn ghost" href="<%= ctx %>/products">🔍 Search</a>
            <% if (u == null) { %>
                <a class="btn ghost" href="<%= ctx %>/login">Sign In</a>
            <% } else if ("ADMIN".equalsIgnoreCase(u.getRole())) { %>
                <a class="btn ghost" href="<%= ctx %>/admin/dashboard">Admin Panel</a>
            <% } else { %>
                <a class="btn ghost" href="<%= ctx %>/profile">Account (<%= u.getName() != null ? u.getName().split(" ")[0] : "User" %>)</a>
            <% } %>
            <a class="btn" href="<%= ctx %>/cart">Bag 🛒</a>
        </div>
    </div>
</header>

<!-- Hero Section -->
<section class="hero-wrapper">
    <div class="hero-grid">
        <div>
            <span class="badge-tag">✦ NEW ERA COLLECTION 2026 • ADVANCED JAVA</span>
            <h1 class="hero-title">Refined Living.</h1>
            <p class="hero-subtitle">Discover a curated universe of contemporary luxury. Crafted with Jakarta Servlets, modern connection pooling, and aesthetic precision.</p>
            <div class="hero-buttons">
                <a class="btn" href="<%= ctx %>/products">Explore Collection →</a>
                <a class="btn secondary" href="#featured-arrivals">View New Arrivals</a>
            </div>
        </div>
    </div>
</section>

<!-- Trust Indicators / Features Grid -->
<div class="features-grid">
    <div class="feature-card">
        <div class="feature-icon-badge">⚡</div>
        <div>
            <h4>Express Dispatch</h4>
            <p>Guaranteed 24-48h dispatch on all orders</p>
        </div>
    </div>
    <div class="feature-card">
        <div class="feature-icon-badge">🛡️</div>
        <div>
            <h4>Buyer Protection</h4>
            <p>100% verified SSL checkout & escrow security</p>
        </div>
    </div>
    <div class="feature-card">
        <div class="feature-icon-badge">💎</div>
        <div>
            <h4>Curated Quality</h4>
            <p>Direct designer grade & genuine certifications</p>
        </div>
    </div>
    <div class="feature-card">
        <div class="feature-icon-badge">🎧</div>
        <div>
            <h4>Concierge Support</h4>
            <p>24/7 dedicated customer assistance</p>
        </div>
    </div>
</div>

<main>
<!-- Curated Collections Showcase -->
<section class="section container">
    <div class="section-head">
        <div>
            <span class="eyebrow">CURATED EDIT</span>
            <h2>Timeless Collections</h2>
        </div>
        <span class="eyebrow">03 SIGNATURE CATEGORIES</span>
    </div>
    <div class="curated-grid">
        <a class="curated-card" href="<%= ctx %>/products?category=1">
            <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=1200&q=85" alt="Electronics collection">
            <div class="curated-copy">
                <h3>Technology</h3>
                <span>Explore Modern Devices</span>
            </div>
        </a>
        <a class="curated-card" href="<%= ctx %>/products?category=3">
            <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1200&q=85" alt="Fashion collection">
            <div class="curated-copy">
                <h3>Fashion & Apparel</h3>
                <span>Explore Minimalist Style</span>
            </div>
        </a>
        <a class="curated-card" href="<%= ctx %>/products?category=2">
            <img src="https://images.unsplash.com/photo-1495446815901-a7297e633e8d?auto=format&fit=crop&w=1200&q=85" alt="Books collection">
            <div class="curated-copy">
                <h3>Books & Literature</h3>
                <span>Explore Essential Reading</span>
            </div>
        </a>
    </div>
</section>

<!-- Featured Products Section -->
<section id="featured-arrivals" class="products-section container">
    <div class="section-head">
        <div>
            <span class="eyebrow">NEW ARRIVALS</span>
            <h2>Curated for Modern Routines</h2>
        </div>
        <a class="btn ghost" href="<%= ctx %>/products">Browse Entire Catalogue →</a>
    </div>
    <div class="grid">
        <% if (featuredProducts != null && !featuredProducts.isEmpty()) {
            String[] productImages = {
                "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=900&q=85",
                "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=85",
                "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=85",
                "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=85",
                "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=900&q=85",
                "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=900&q=85"
            };
            int i = 0;
            for (Product p : featuredProducts) {
                String image = (p.getImageUrl() != null && !p.getImageUrl().trim().isEmpty()) ? p.getImageUrl() : productImages[i % productImages.length];
        %>
        <article class="product-card">
            <a class="product-image" href="<%= ctx %>/product?id=<%= p.getProductId() %>">
                <img src="<%= image %>" alt="<%= p.getName() %>" loading="lazy">
                <span class="product-tag"><%= p.getStock() > 0 ? "IN STOCK" : "SOLD OUT" %></span>
            </a>
            <div class="product-body">
                <span class="chip"><%= p.getBrand() != null && !p.getBrand().isBlank() ? p.getBrand() : "ShopSphere Curated" %></span>
                <a class="product-title" href="<%= ctx %>/product?id=<%= p.getProductId() %>"><%= p.getName() %></a>
                <p class="muted"><%= p.getDescription() != null && p.getDescription().length() > 68 ? p.getDescription().substring(0, 68) + "…" : (p.getDescription() == null ? "Premium artisanal craft." : p.getDescription()) %></p>
                <div style="display:flex;justify-content:space-between;align-items:center;margin-top:6px;">
                    <span class="price">₹<%= String.format("%.2f", p.getPrice()) %></span>
                    <% if (p.getStock() > 0) { %>
                        <span class="chip success">● Ready to ship</span>
                    <% } else { %>
                        <span class="chip danger">● Out of stock</span>
                    <% } %>
                </div>
                <div class="product-actions">
                    <% if (p.getStock() > 0) { %>
                    <form method="post" action="<%= ctx %>/cart">
                        <input type="hidden" name="_csrf" value="${csrfToken}" />
                        <input type="hidden" name="productId" value="<%= p.getProductId() %>">
                        <input type="hidden" name="quantity" value="1">
                        <button type="submit">Add to Bag</button>
                    </form>
                    <% } %>
                    <form method="post" action="<%= ctx %>/wishlist">
                        <input type="hidden" name="_csrf" value="${csrfToken}" />
                        <input type="hidden" name="productId" value="<%= p.getProductId() %>">
                        <button class="btn ghost" type="submit" title="Add to Wishlist">♡</button>
                    </form>
                </div>
            </div>
        </article>
        <% i++; } } else { %>
            <div class="card" style="grid-column:1/-1;text-align:center;padding:48px;">
                <h3>Discover our catalogue</h3>
                <p class="muted">Explore the complete ShopSphere collection with search and filtering.</p>
                <a class="btn" href="<%= ctx %>/products" style="margin-top:20px;">Browse All Products</a>
            </div>
        <% } %>
    </div>
</section>

<!-- Luxury Editorial Banner -->
<section class="editorial-feature">
    <div class="feature-copy">
        <span class="eyebrow">THE ARCHITECTURAL EDIT</span>
        <h2>Designed for everyday aesthetic.</h2>
        <p>Explore pieces selected for modern routines, thoughtful living spaces and contemporary moments. Use coupon code <strong>WELCOME10</strong> at checkout for 10% privilege discount.</p>
        <a class="btn secondary" href="<%= ctx %>/products">Discover The Edit →</a>
    </div>
</section>
</main>

<!-- Main Footer -->
<footer class="main-footer">
    <div class="container">
        <div class="footer-grid">
            <div>
                <a class="brand-logo" href="<%= ctx %>/">ShopSphere</a>
                <p class="muted" style="max-width:380px;margin-top:16px;line-height:1.7;">A state-of-the-art e-commerce platform built with Jakarta EE, MySQL 8, PBKDF2 cryptography, and modern glassmorphism aesthetics.</p>
                <div style="margin-top:16px;display:flex;gap:8px;">
                    <span class="chip">RTU Practical B.Tech</span>
                    <span class="chip">MySQL 8.0</span>
                    <span class="chip">Tomcat 10.1</span>
                </div>
            </div>
            <div>
                <h4 class="footer-title">Collections</h4>
                <ul class="footer-links">
                    <li><a href="<%= ctx %>/products">All Products</a></li>
                    <li><a href="<%= ctx %>/products?category=1">Technology</a></li>
                    <li><a href="<%= ctx %>/products?category=2">Books</a></li>
                    <li><a href="<%= ctx %>/products?category=3">Fashion</a></li>
                </ul>
            </div>
            <div>
                <h4 class="footer-title">Account & Orders</h4>
                <ul class="footer-links">
                    <li><a href="<%= ctx %>/profile">Customer Profile</a></li>
                    <li><a href="<%= ctx %>/orders">Track Orders</a></li>
                    <li><a href="<%= ctx %>/wishlist">Saved Wishlist</a></li>
                    <li><a href="<%= ctx %>/cart">Shopping Bag</a></li>
                </ul>
            </div>
            <div>
                <h4 class="footer-title">Platform & Security</h4>
                <ul class="footer-links">
                    <li><a href="<%= ctx %>/login">Sign In / Register</a></li>
                    <li><a href="<%= ctx %>/health">System Health API</a></li>
                    <li><a href="<%= ctx %>/admin/dashboard">Administrator Console</a></li>
                    <li><a href="https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java" target="_blank" rel="noopener">GitHub Repository ↗</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <span>© 2026 ShopSphere — Abhimanyu Sharma (24EGJAD002). All rights reserved.</span>
            <span>Crafted with Jakarta Servlets, JDBC Connection Pooling & Modern CSS.</span>
        </div>
    </div>
</footer>

<script src="<%= ctx %>/assets/js/app.js"></script>
</body>
</html>