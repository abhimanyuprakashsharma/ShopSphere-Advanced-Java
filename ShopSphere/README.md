# ShopSphere — Advanced Java E-Commerce Platform

<p align="center">
  <a href="https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java/actions">
    <img src="https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java/actions/workflows/ci.yml/badge.svg" alt="CI Build Status" />
  </a>
  <a href="https://shopsphere-online.azurewebsites.net">
    <img src="https://img.shields.io/badge/Azure%20App%20Service-Live%20Demo-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white" alt="Azure Deployment" />
  </a>
  <a href="https://shopsphere-online.azurewebsites.net/health">
    <img src="https://img.shields.io/badge/Health%20Check-UP%20(200)-success?style=for-the-badge&logo=statuspage" alt="System Health" />
  </a>
  <a href="https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java">
    <img src="https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Repo" />
  </a>
</p>

> **RTU 3rd Year Advanced Java Mini-Project & Practical Curriculum**  
> **Author:** Abhimanyu Sharma | **Roll No.:** 24EGJAD002  
> **Branch:** B.Tech — Artificial Intelligence & Data Science | **College:** Global Institute of Technology, Jaipur  

---

## 🌐 Live Application & Demo Access

- 🚀 **Live Storefront:** [https://shopsphere-online.azurewebsites.net](https://shopsphere-online.azurewebsites.net)
- 🩺 **Health Check:** [https://shopsphere-online.azurewebsites.net/health](https://shopsphere-online.azurewebsites.net/health)
- 🛡️ **Admin Panel:** [https://shopsphere-online.azurewebsites.net/admin/dashboard](https://shopsphere-online.azurewebsites.net/admin/dashboard)

### 🔑 Demo Login Accounts

| Role | Username / Email | Password | Access Details |
|:---|:---|:---|:---|
| **Administrator** | `admin@shopsphere.com` | `Admin@1234` | Complete administrative dashboard: Product catalogue CRUD, categories, low-stock alerts, user accounts, order status, sales reporting & CSV export |
| **Customer** | `customer@shopsphere.com` | `Customer@1234` | Customer experience: Product search/filter/pagination, cart & wishlist, coupon discount checkout, order history & PDF invoices |
| **New Customer** | *Any email address* | *Custom password* | Instant registration at `/register` with PBKDF2 salt hashing and CSRF tokens |

---

## 📁 ShopSphere Module Architecture

```text
ShopSphere/
├── src/
│   ├── main/
│   │   ├── java/com/shopsphere/
│   │   │   ├── dao/           # Data Access Objects (ProductDAO, UserDAO, OrderDAO...)
│   │   │   ├── model/         # Domain entity beans (Product, User, Order, Cart...)
│   │   │   ├── web/           # Jakarta Servlets (Front controllers & API endpoints)
│   │   │   ├── filter/        # AuthFilter, CsrfFilter, SecurityHeadersFilter
│   │   │   ├── security/      # PBKDF2 password hashing & token generation
│   │   │   ├── rmi/           # Java RMI inventory service & registry
│   │   │   ├── network/       # Java TCP Socket client-server lookup
│   │   │   ├── desktop/       # Java Swing desktop admin dashboard
│   │   │   ├── jndi/          # JNDI DataSource configuration
│   │   │   └── serialization/ # Java object persistence & serialization
│   │   └── webapp/
│   │       ├── WEB-INF/       # web.xml, views (JSP), custom tags
│   │       └── assets/        # CSS (Midnight Navy & Champagne Gold), JS, icons
│   └── test/                  # Automated JUnit 5 test suite
├── database/
│   ├── shopsphere.sql         # Complete MySQL 8 database schema
│   └── seed.sql               # Seed products, categories, reviews, and test users
├── deploy/                    # Tomcat context.xml and cloud configs
└── pom.xml                    # Maven build file (Jakarta EE 10 / Tomcat 10 & 11)
```

---

## 🛠️ Technology Stack

| Layer | Technology |
|---|---|
| **Language** | Java 17 / Java 21 |
| **Web Tier** | Jakarta Servlet 6.0/6.1 + JSP 3.1 & JSTL |
| **Persistence** | JDBC with HikariCP / Apache Tomcat DBCP Connection Pooling |
| **Database** | MySQL 8.0 Flexible Server |
| **Security** | NIST PBKDF2WithHmacSHA256, CSRF tokens, Session Fixation Defense |
| **Theme / UI** | Midnight Deep Navy (`#090d16`) & Luminous Gold (`#e2b76e`), Glassmorphism |
| **Build Tool** | Apache Maven 3.9+ |
| **Server** | Apache Tomcat 10.1 / 11 |
| **Cloud Hosting** | Microsoft Azure App Service (Linux) |
| **CI/CD** | GitHub Actions Pipeline |

---

## ✨ Application Features

### 👤 Storefront & Customer Journey
- Full-text product search, category filtering, sorting (price, popularity, rating), and pagination.
- Product details with high-resolution image gallery, stock indicators, and customer reviews.
- Persistent shopping cart and wishlist management.
- Coupon code discount engine (`WELCOME10` demo voucher).
- Realistic multi-step checkout workflow with order summary and instant invoice PDF generation.
- Customer dashboard with past order tracking and order return requests.

### 👑 Admin Management Dashboard
- Real-time KPI cards: Total Revenue, Total Orders, Active Customers, Low-Stock Warnings.
- Dynamic sales analytics charts powered by Chart.js (monthly revenue trends & category breakdown).
- Product management: Add new products with image URLs, modify prices, update inventory stock, or soft-delete products.
- Order management: View incoming orders and update delivery fulfillment status (PENDING, PROCESSING, SHIPPED, DELIVERED).
- Data export & import: One-click CSV export of sales reports and inventory data.

### 🔒 Enterprise Security Measures
- **PBKDF2 Password Hashing**: Passwords stored with cryptographic random 16-byte salts and 65,536 iterations.
- **CSRF Token Guard**: Nonce tokens generated per session and verified on all state-changing HTTP methods.
- **Session Protection**: Renewal of session IDs on login prevents session fixation; timeout handlers enforce re-auth.
- **SQL Injection Prevention**: 100% prepared statements across all DAO classes.
- **HTTP Security Headers**: Strict-Transport-Security, Content-Security-Policy, X-Frame-Options: DENY, X-Content-Type-Options: nosniff.

---

## ⚙️ Local Development Setup

### 1. Clone the Repository
```bash
git clone https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java.git
cd ShopSphere-Advanced-Java/ShopSphere
```

### 2. Database Initialization
```bash
mysql -u root -p
```
```sql
CREATE DATABASE shopsphere;
USE shopsphere;
SOURCE database/shopsphere.sql;
SOURCE database/seed.sql;
```

### 3. Set Connection Environment Variables
```bash
# Windows PowerShell
$env:SHOPSPHERE_DB_URL="jdbc:mysql://localhost:3306/shopsphere?useSSL=false&serverTimezone=UTC"
$env:SHOPSPHERE_DB_USER="root"
$env:SHOPSPHERE_DB_PASSWORD="your_password"
```

### 4. Build Application
```bash
mvn clean test package
```
*Creates `target/shopsphere.war`.*

### 5. Run on Apache Tomcat
Copy `target/shopsphere.war` into `$CATALINA_HOME/webapps/` and start Tomcat:
```bash
catalina.bat run
```
Access at: `http://localhost:8080/shopsphere/`

---

## 📄 Academic Documentation Index

| Document | Purpose |
|---|---|
| [`ARCHITECTURE.md`](./ARCHITECTURE.md) | In-depth technical architecture, DAO patterns, and servlet pipelines |
| [`RTU-MAPPING.md`](./RTU-MAPPING.md) | Mapping of RTU Advanced Java syllabus topics to source code |
| [`FINAL-REPORT.md`](./FINAL-REPORT.md) | Complete academic project report with ER diagram & schemas |
| [`VIVA-CHECKLIST.md`](./VIVA-CHECKLIST.md) | Viva Voce questions, key answers, and demonstration points |
| [`AUDIT-REPORT.md`](./AUDIT-REPORT.md) | Security audit findings, OWASP compliance, and code fixes |
| [`DEPLOYMENT-CHECKLIST.md`](./DEPLOYMENT-CHECKLIST.md) | Cloud and on-premise production deployment guide |

---

## 👨‍💻 Student Details & Attribution

| Field | Details |
|:---|:---|
| **Developer** | **Abhimanyu Sharma** |
| **Roll Number** | **24EGJAD002** |
| **Branch** | **B.Tech — Artificial Intelligence & Data Science** |
| **College** | **Global Institute of Technology (GIT), Jaipur** |
| **University** | **Rajasthan Technical University (RTU), Kota** |
| **GitHub** | [**@abhimanyuprakashsharma**](https://github.com/abhimanyuprakashsharma) |
| **Repository** | [**ShopSphere-Advanced-Java**](https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java) |
| **Live App** | [**shopsphere-online.azurewebsites.net**](https://shopsphere-online.azurewebsites.net) |

---

*ShopSphere — Enterprise Java EE Application | RTU Advanced Java Project*
