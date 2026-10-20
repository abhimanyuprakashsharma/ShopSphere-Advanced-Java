# ShopSphere & Advanced Java Lab Experiments

> **RTU 3rd Year Advanced Java Project & Practical Labs**  
> **Student:** Abhimanyu Sharma | **Roll No.:** 24EGJAD002  
> **Branch:** B.Tech — Artificial Intelligence & Data Science | **College:** Global Institute of Technology, Jaipur  

---

## 📁 Repository Structure

This repository is organized into two primary modules:

```text
ShopSphere-Advanced-Java/
├── ShopSphere/                 # Full-stack E-Commerce Web Application (Java EE, Servlets, JSP, JDBC)
│   ├── src/                    # Complete Java source & JSP webapp
│   ├── database/               # MySQL schema (shopsphere.sql) & seed data (seed.sql)
│   ├── deploy/                 # Tomcat context and deployment descriptors
│   ├── pom.xml                 # Maven build configuration
│   └── docs/                   # Architectural guides, reports, presentations, and viva checklist
│
├── Java-Lab-Experiments/       # RTU Syllabus Practical Lab Experiments (Labs 1 to 7)
│   ├── LAB_No.1/               # Java Swing GUI — Student Registration Form
│   ├── LAB_No.2/               # Java Swing MVC Architecture — Calculator App
│   ├── LAB_No.3/               # JDBC with MySQL — Database CRUD Operations
│   ├── LAB_No.4/               # Java Networking — Socket / ServerSocket Client-Server
│   ├── LAB_No.5/               # Java RMI — Remote Method Invocation Calculator
│   ├── LAB_No.6/               # Servlet Basics — StudentServlet with HTML Form
│   └── LAB_No.7/               # Advanced Servlets — Filters, Listeners, Session & Auth Flow
│
└── README.md                   # Repository overview and quick start guide
```

---

## 🛒 1. ShopSphere Project Overview

**ShopSphere** is a complete, production-ready Java EE e-commerce web application covering core and advanced concepts:

* **MVC Architecture**: Jakarta Servlets as Controllers, DAO Layer for JDBC abstraction, JSP & JSTL for views.
* **Authentication & Security**: PBKDF2 password hashing, role-based access control (Admin & Customer), CSRF tokens, and secure session management.
* **Storefront Features**: Product catalog with search, filter, pagination, multi-image gallery, reviews, wishlist, cart, coupon discounts, and mock checkout.
* **Admin Dashboard**: Real-time sales statistics, product & category management, user management, and CSV reporting.
* **Academic Demonstrations**: Built-in RMI inventory service, Socket-based product lookup, Swing desktop admin interface, JNDI DataSource, and Internationalization (Hindi/English).

For detailed setup, database import instructions, and architecture breakdown, see the **[ShopSphere Documentation](./ShopSphere/README.md)**.

---

## 🧪 2. Java Lab Experiments (RTU Syllabus)

| Lab | Topic | Description | Key Files |
|:---|:---|:---|:---|
| **LAB 1** | Swing GUI | Student Registration Form with form validation | `StudentRegistration.java` |
| **LAB 2** | Swing MVC | Calculator App following Model-View-Controller design | `ModelsCalculator.java`, `ViewsCalculator.java`, `ControllerCalculator.java` |
| **LAB 3** | JDBC Operations | MySQL connection, PreparedStatements, CRUD operations | `LAB_No.3/jdbc/` |
| **LAB 4** | Java Networking | TCP Client-Server communication using `Socket` & `ServerSocket` | `server.java`, `client.java` |
| **LAB 5** | Java RMI | Remote Method Invocation Calculator (Interface, Impl, Server, Client) | `Calculator.java`, `CalculatorImpl.java`, `Server.java`, `Client.java` |
| **LAB 6** | Servlets Basics | HTML Form handling with GET/POST in `StudentServlet` | `StudentServlet.java`, `index.html` |
| **LAB 7** | Advanced Servlets | Authentication filter, application lifecycle listener, session handling | `AuthFilter.java`, `AppListener.java`, `HomeServlet.java` |

---

## 🚀 Getting Started

### Prerequisites
* **Java**: JDK 17+
* **Build Tool**: Apache Maven 3.8+
* **Web Server**: Apache Tomcat 10.1 or 11
* **Database**: MySQL 8.x

### Running ShopSphere Locally
```bash
# 1. Navigate to the ShopSphere project
cd ShopSphere

# 2. Build the application package
mvn clean package

# 3. Deploy the generated WAR file (target/shopsphere.war) to Tomcat's webapps directory
```

### Running Lab Experiments
Each experiment in `Java-Lab-Experiments` can be compiled and executed directly with `javac` and `java` or opened in any Java IDE (IntelliJ IDEA, Eclipse, VS Code).

---

## 👨‍💻 Student Details

* **Name**: Abhimanyu Sharma
* **Roll No.**: 24EGJAD002
* **Branch**: B.Tech — Artificial Intelligence & Data Science
* **College**: Global Institute of Technology (GIT), Jaipur
* **University**: Rajasthan Technical University (RTU), Kota
* **Subject**: Advanced Java Programming (RTU Curriculum)
