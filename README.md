# 📱 Product Admin System for Mobile Shop

## 📅 Project Story
The **Product Admin System for Mobile Shop** is a Java Spring Boot and MySQL-based web application designed to help mobile shop owners efficiently manage their product inventory.  
Through a secure admin login, shop owners can perform **Create, Read, Update, Delete (CRUD)** operations on products, search and filter records, and monitor low-stock alerts to avoid stock shortages.  

All admin and product information is stored in a secure MySQL database, with sensitive credentials hidden from public repositories for security.

---

## 📚 Java & Spring Boot Concepts Covered
- **Spring Boot** – Controllers, Service Layer, Repository Layer  
- **Spring Data JPA** – ORM mapping with MySQL  
- **MVC Architecture** – Clean separation of logic and UI  
- **Authentication** – Secure admin login  
- **Validation** – Ensuring valid data (price > 0, stock ≥ 0)  
- **Bootstrap** – Responsive front-end design  
- **Maven** – Build and dependency management  

---

## 🔧 Technologies Used
- Java 21
- Spring Boot
- Spring Data JPA
- MySQL
- HTML / CSS / JavaScript / Bootstrap
- Maven

---

## 📌 Key Functionalities
### 📝 Admin Login
- Secure login using **username** and **password**
- Access restricted to authenticated admins only

### 📦 Product Management (CRUD)
- **Create:** Add new products with all details (model name, brand, price, stock quantity, features, warranty period, creation date)
- **Read:** View all products with search and filtering options
- **Update:** Edit product details such as price, stock quantity, and features
- **Delete:** Remove discontinued products with confirmation prompt

### 🔍 Search & Filter
- Search by **brand** or **model name**
- Filter products by **price range** or **brand**
- **Low Stock Alert:** View products with stock less than 5 units

---

## 📊 Database Schema
### 🗄 `products` Table Fields
| Field Name       | Description                              |
|------------------|------------------------------------------|
| prodid           | Auto-generated product ID (PK)           |
| model_name       | Mobile model name                        |
| brand            | Brand of the mobile phone                |
| price            | Product price (>0)                       |
| stock_quantity   | Stock available (≥0)                     |
| features         | Product specifications                   |
| warranty_period  | Warranty duration                        |
| created_at       | Date when product was added              |

### 🗄 `admins` Table Fields
| Field Name  | Description                                  |
|-------------|----------------------------------------------|
| id          | Auto-generated admin ID (PK)                 |
| shop_name   | Name of the shop                             |
| owner_name  | Owner’s name                                 |
| email       | Contact email                                |
| phone       | Contact phone number                         |
| username    | Login username                               |
| password    | Login password                               |
| address     | Shop address                                 |

---

### Clone the Repository
```bash
git clone https://github.com/rahulthakare04/mobile-shop-admin-system.git
cd mobile-shop-admin-system
## 🌐 Cloud Database and Security
- Supports **local and cloud-hosted MySQL** databases.
- Sensitive data (e.g., DB credentials) are hidden in the public repository.
- Admin can securely access and manage data through the web platform.

---


## 🌄 How to Run the Project

### Clone the Repository
```bash
git clone https://github.com/rahulthakare04/mobile-shop-admin-system.git
cd mobile-shop-admin-system
```

### Configure Database
Create the database:

```sql
CREATE DATABASE mobile_shop_admin;
```

Update application.properties with your database credentials:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/mobile_shop_admin
spring.datasource.username=YOUR_DB_USERNAME
spring.datasource.password=YOUR_DB_PASSWORD
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

Insert sample admins and products data for testing.

### Deploy and Run
```bash
mvn clean install
mvn spring-boot:run
```

### Access via Browser
Open: http://localhost:8080  
Login with your admin credentials.

---

## 📸 Video Execution
🎥 **Demo Video:** (Replace this with YouTube or Google Drive link)

---

## 🚀 Future Improvements
- Password encryption for admin accounts.
- Enhanced session timeout handling.
- Role-based dashboard (Admin / Staff).
- Improved UI/UX with Bootstrap 5.
- Product image upload support.

---

## 👥 Author
**Rahul Thakare**  
Java Backend Developer | Web Application Enthusiast  
[LinkedIn](https://linkedin.com/in/rahulthakare) | [GitHub](https://github.com/rahulthakare04)

---

## 📜 View-Only License
Copyright (c) 2025 Rahul Thakare

Permission is granted to view and reference this code for educational and learning purposes only.

**RESTRICTIONS:**

❌ No copying, modification, or distribution is allowed

❌ No commercial use permitted

❌ No derivative works allowed

✅ Code is for reference and learning only
