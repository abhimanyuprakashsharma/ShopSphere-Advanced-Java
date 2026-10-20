# 🛍️ ShopSphere — Enterprise Java EE E-Commerce Platform & RTU Advanced Java Labs

<p align="center">
  <a href="https://shopsphere-online.azurewebsites.net">
    <img src="https://img.shields.io/badge/Azure%20App%20Service-Live%20Demo-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white" alt="Azure Deployment" />
  </a>
  <a href="https://shopsphere-online.azurewebsites.net/health">
    <img src="https://img.shields.io/badge/Health%20Check-UP%20(200)-success?style=for-the-badge&logo=statuspage" alt="System Health" />
  </a>
  <a href="https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java">
    <img src="https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Repo" />
  </a>
  <a href="https://github.com/abhimanyuprakashsharma">
    <img src="https://img.shields.io/badge/Developer-Abhimanyu%20Sharma-24292e?style=for-the-badge&logo=github&logoColor=white" alt="Author Profile" />
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Java-17%20%7C%2021-ED8B00?style=flat-square&logo=openjdk&logoColor=white" alt="Java" />
  <img src="https://img.shields.io/badge/Jakarta%20EE-10-orange?style=flat-square&logo=eclipsevert.x&logoColor=white" alt="Jakarta EE" />
  <img src="https://img.shields.io/badge/Apache%20Tomcat-10.1%20%7C%2011-F8DC75?style=flat-square&logo=apachetomcat&logoColor=black" alt="Tomcat" />
  <img src="https://img.shields.io/badge/MySQL-8.0-4479A1?style=flat-square&logo=mysql&logoColor=white" alt="MySQL" />
  <img src="https://img.shields.io/badge/Architecture-MVC%20%2B%20DAO-blue?style=flat-square" alt="Architecture" />
  <img src="https://img.shields.io/badge/RTU-B.Tech%20AI%20%26%20DS-red?style=flat-square" alt="RTU" />
</p>

---

## 👨‍💻 Student & Academic Profile

| Property | Details |
|:---|:---|
| **Student Name** | **Abhimanyu Sharma** |
| **Roll Number** | **24EGJAD002** |
| **Branch / Degree** | **B.Tech — Artificial Intelligence & Data Science (AI & DS)** |
| **Institution** | **Global Institute of Technology (GIT), Jaipur** |
| **Affiliated University** | **Rajasthan Technical University (RTU), Kota** |
| **Semester / Year** | **5th Semester / 3rd Year** |
| **Subject** | **Advanced Java Programming (RTU Syllabus & Lab)** |
| **GitHub Profile** | [**@abhimanyuprakashsharma**](https://github.com/abhimanyuprakashsharma) |
| **GitHub Repository** | [**ShopSphere-Advanced-Java**](https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java) |
| **Live Web Application** | [**shopsphere-online.azurewebsites.net**](https://shopsphere-online.azurewebsites.net) |

---

## 🌐 Live Azure Deployment & Demo Access

The complete application is hosted on **Microsoft Azure App Service** with a managed MySQL 8.0 backend:

- 🚀 **Live Storefront URL:** [https://shopsphere-online.azurewebsites.net](https://shopsphere-online.azurewebsites.net)
- 🩺 **System Health Endpoint:** [https://shopsphere-online.azurewebsites.net/health](https://shopsphere-online.azurewebsites.net/health)
- 🛡️ **Admin Panel:** [https://shopsphere-online.azurewebsites.net/admin/dashboard](https://shopsphere-online.azurewebsites.net/admin/dashboard)

### 🔑 Demo Login Credentials

You can test all functionalities immediately using the pre-configured accounts below, or register your own account on the live site:

| Role | Email Address | Password | Permissions & Features |
|:---|:---|:---|:---|
| **👑 Administrator** | `admin@shopsphere.com` | `Admin@1234` | Full access to Admin Dashboard, Add / Edit / Delete Products, Manage Categories, Stock Alerts, View Order History, Review Moderation, Sales Analytics with Chart.js, CSV Export |
| **🛍️ Customer** | `customer@shopsphere.com` | `Customer@1234` | Product search & filter, Product reviews & ratings, Shopping Cart, Wishlist, Apply Promo Coupons, Checkout Simulation, Order Tracking, Invoice PDF Download |
| **✨ New User** | *Any valid email* | *Custom password* | Self-registration via the `/register` page with PBKDF2 password hashing & CSRF protection |

---

## 🎨 Modern Visual Experience

The application features a bespoke design system:
- **Palette**: Midnight Deep Navy (`#090d16`) backdrop accented with Luminous Champagne Gold (`#e2b76e`) and Emerald status highlights.
- **Glassmorphism**: Translucent frosted headers with fluid micro-interactions and smooth shadows.
- **Responsive Layout**: Designed for seamless browsing across desktop workstations, tablets, and smartphones.

---

## 📁 Repository Structure

```text
ShopSphere-Advanced-Java/
├── .github/
│   └── workflows/
│       └── ci.yml               # GitHub Actions CI/CD (Build, Test & Azure Auto-Deploy)
│
├── ShopSphere/                 # Enterprise E-Commerce Web Application (Java EE)
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/shopsphere/
│   │   │   │   ├── dao/        # Data Access Objects (ProductDAO, UserDAO, OrderDAO...)
│   │   │   │   ├── model/      # POJO domain models (User, Product, Cart, Order...)
│   │   │   │   ├── web/        # Jakarta Servlets (Auth, Store, Admin, Checkout...)
│   │   │   │   ├── filter/     # Security, Auth & CSRF Filters
│   │   │   │   ├── security/   # PBKDF2 Password Hashing & Token generation
│   │   │   │   ├── rmi/        # Java RMI Inventory Service & Registry
│   │   │   │   ├── network/    # TCP Socket product lookup service
│   │   │   │   └── desktop/    # Java Swing desktop admin dashboard
│   │   │   └── webapp/
│   │   │       ├── WEB-INF/    # web.xml, JSP views, tags, layouts
│   │   │       └── assets/     # CSS (Midnight Gold theme), JavaScript, images
│   │   └── test/               # JUnit 5 test suite (14/14 automated tests)
│   ├── database/
│   │   ├── shopsphere.sql      # Production database schema (tables, foreign keys, indexes)
│   │   └── seed.sql            # Seed catalog, categories & admin/customer users
│   ├── deploy/                 # Tomcat context descriptors & production configs
│   ├── pom.xml                 # Maven build configuration (WAR packaging)
│   └── docs/                   # Architecture, reports, presentations & viva checklist
│
├── Java-Lab-Experiments/       # RTU 5th Sem Practical Lab Experiments (Labs 1 to 7)
│   ├── LAB_No.1/               # Java Swing GUI — Student Registration Form
│   ├── LAB_No.2/               # Java Swing MVC Architecture — Calculator App
│   ├── LAB_No.3/               # JDBC with MySQL — Database CRUD Operations
│   ├── LAB_No.4/               # Java Networking — Socket / ServerSocket Client-Server
│   ├── LAB_No.5/               # Java RMI — Remote Method Invocation Calculator
│   ├── LAB_No.6/               # Servlet Basics — StudentServlet with HTML Form
│   └── LAB_No.7/               # Advanced Servlets — Filters, Listeners, Session & Auth Flow
│
├── .gitignore                  # Git exclusions for target/, class files, IDE configs
└── README.md                   # Project overview, live links & student details (this file)
```

---

## 🧪 RTU Advanced Java Practical Lab Experiments

Every experiment prescribed by the **Rajasthan Technical University (RTU)** syllabus has been implemented, documented, and placed in the [`Java-Lab-Experiments`](./Java-Lab-Experiments) folder:

| Lab | Practical Topic | Description | Source Files |
|:---:|:---|:---|:---|
| **LAB 1** | **Swing GUI** | Interactive Student Registration Form with layout management, Swing components, and client-side form validation. | [`StudentRegistration.java`](./Java-Lab-Experiments/LAB_No.1/StudentRegistration.java) |
| **LAB 2** | **Swing MVC** | Desktop Calculator application strictly separated into Model, View, and Controller classes. | [`ModelsCalculator.java`](./Java-Lab-Experiments/LAB_No.2/ModelsCalculator.java)<br>[`ViewsCalculator.java`](./Java-Lab-Experiments/LAB_No.2/ViewsCalculator.java)<br>[`ControllerCalculator.java`](./Java-Lab-Experiments/LAB_No.2/ControllerCalculator.java) |
| **LAB 3** | **JDBC Operations** | MySQL database connectivity, parameterized `PreparedStatement` CRUD operations, and transaction control. | [`LAB_No.3/jdbc/`](./Java-Lab-Experiments/LAB_No.3/jdbc/) |
| **LAB 4** | **Networking** | Client-Server TCP socket communication using Java `Socket` and `ServerSocket` with bidirectional message streams. | [`server.java`](./Java-Lab-Experiments/LAB_No.4/server.java)<br>[`client.java`](./Java-Lab-Experiments/LAB_No.4/client.java) |
| **LAB 5** | **Java RMI** | Remote Method Invocation demonstrating distributed computing with Remote Interface, Implementation, Server Registry, and Client. | [`Calculator.java`](./Java-Lab-Experiments/LAB_No.5/Calculator.java)<br>[`CalculatorImpl.java`](./Java-Lab-Experiments/LAB_No.5/CalculatorImpl.java)<br>[`Server.java`](./Java-Lab-Experiments/LAB_No.5/Server.java)<br>[`Client.java`](./Java-Lab-Experiments/LAB_No.5/Client.java) |
| **LAB 6** | **Servlet Basics** | Jakarta Servlet handling HTTP `GET` and `POST` requests, reading form parameters, and rendering dynamic responses. | [`StudentServlet.java`](./Java-Lab-Experiments/LAB_No.6/StudentServlet.java)<br>[`index.html`](./Java-Lab-Experiments/LAB_No.6/index.html) |
| **LAB 7** | **Advanced Servlets** | Authentication filter chain, application lifecycle listeners, `HttpSession` state management, and protected routing. | [`AuthFilter.java`](./Java-Lab-Experiments/LAB_No.7/AuthFilter.java)<br>[`AppListener.java`](./Java-Lab-Experiments/LAB_No.7/AppListener.java)<br>[`HomeServlet.java`](./Java-Lab-Experiments/LAB_No.7/HomeServlet.java) |

---

## ⚙️ Running Locally

### Prerequisites
- **JDK**: Java 17 or Java 21
- **Build Tool**: Apache Maven 3.8+
- **Application Server**: Apache Tomcat 10.1+ (or Tomcat 11)
- **Database**: MySQL Server 8.0+

### Step 1: Clone Repository
```bash
git clone https://github.com/abhimanyuprakashsharma/ShopSphere-Advanced-Java.git
cd ShopSphere-Advanced-Java/ShopSphere
```

### Step 2: Database Setup
Launch MySQL and execute the setup scripts:
```sql
CREATE DATABASE shopsphere;
USE shopsphere;
SOURCE database/shopsphere.sql;
SOURCE database/seed.sql;
```

### Step 3: Configure Environment Variables
Set database connection parameters (or configure Tomcat's `context.xml`):
```bash
export SHOPSPHERE_DB_URL="jdbc:mysql://localhost:3306/shopsphere?useSSL=false&serverTimezone=UTC"
export SHOPSPHERE_DB_USER="root"
export SHOPSPHERE_DB_PASSWORD="your_password"
```

### Step 4: Build & Run Tests
```bash
mvn clean test package
```
*Output will produce `target/shopsphere.war` with all 14 unit tests passing.*

### Step 5: Deploy to Tomcat
Copy `target/shopsphere.war` to your Tomcat `webapps/` folder and start Tomcat:
```bash
# Windows
catalina.bat run

# Linux/macOS
./catalina.sh run
```
Open your browser at: **`http://localhost:8080/shopsphere/`**

---

## 🔒 Security Architecture

1. **Password Hashing**: NIST-compliant `PBKDF2WithHmacSHA256` with unique 16-byte random salts and 65,536 iterations.
2. **CSRF Mitigation**: Cryptographically secure, per-session anti-forgery tokens validated on all mutation requests (`POST`/`PUT`/`DELETE`).
3. **Session Fixation Defense**: Session identifiers are invalidated and renewed upon every successful authentication.
4. **SQL Injection Defense**: 100% of database interactions utilize compiled JDBC `PreparedStatements` with strong parameter typing.
5. **Security Headers**: Automatic injection of `Content-Security-Policy`, `X-Content-Type-Options: nosniff`, `X-Frame-Options: DENY`, and `Referrer-Policy`.

---

## 📜 Academic Documentation & Viva Preparation

Comprehensive academic resources and viva checklists are included in the repository:

- 📑 **[System Architecture Document](./ShopSphere/ARCHITECTURE.md)**
- 🎯 **[RTU Syllabus Topic Mapping](./ShopSphere/RTU-MAPPING.md)**
- 📋 **[Viva Voce Preparation Checklist](./ShopSphere/VIVA-CHECKLIST.md)**
- 🛡️ **[Application Security Audit Report](./ShopSphere/AUDIT-REPORT.md)**
- 🚀 **[Production Deployment Checklist](./ShopSphere/DEPLOYMENT-CHECKLIST.md)**
- 📊 **[Final Project Report](./ShopSphere/FINAL-REPORT.md)**

---

## 👤 Author & Attribution

Developed with ❤️ by **Abhimanyu Sharma**  
- **GitHub**: [@abhimanyuprakashsharma](https://github.com/abhimanyuprakashsharma)  
- **College**: Global Institute of Technology (GIT), Jaipur  
- **Course**: B.Tech Artificial Intelligence & Data Science (RTU)  
- **Roll Number**: 24EGJAD002  

*Created for educational demonstration and RTU Advanced Java Practical examination.*
