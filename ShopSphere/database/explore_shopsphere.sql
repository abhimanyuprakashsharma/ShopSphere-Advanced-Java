-- ========================================================
-- ShopSphere Database Explorer & Quick Queries
-- Database: shopsphere
-- Host: localhost:3306 | User: root
-- ========================================================

USE shopsphere;

-- 1. List all tables
SHOW TABLES;

-- 2. Check registered users (Admin & Customers)
SELECT user_id, name, email, role, mobile, status, created_at FROM users;

-- 3. Check products catalogue
SELECT product_id, name, brand, price, discount, stock, status FROM products;

-- 4. Check categories
SELECT category_id, name, description, status FROM categories;

-- 5. Check customer carts and wishlist
SELECT * FROM cart;
SELECT * FROM wishlist;

-- 6. Check customer orders & payments
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM payments;

-- 7. Check coupons
SELECT * FROM coupons;

-- 8. Check product reviews
SELECT * FROM reviews;
