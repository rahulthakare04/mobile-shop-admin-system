# Product Admin System for Mobile Shop

## Project Story

The **Product Admin System for Mobile Shop** is a Java Spring Boot and MySQL-based web application designed to help shop owners efficiently manage their product inventory.  
Through a simple and secure admin login, the system provides CRUD operations for products, search and filtering capabilities, and low-stock alerts to ensure smooth business operations.

---

## Java & Spring Boot Concepts Covered

- **Spring Boot**: REST Controllers, Service Layer, Repository Layer  
- **Spring Data JPA** for ORM mapping with MySQL  
- **Authentication** using basic admin login  
- **CRUD operations** on the products table  
- **Input Validation** (Price > 0, Stock ≥ 0)  
- **MVC Architecture** with JSP/HTML front-end  
- **Bootstrap** for responsive UI  
- **Maven** for build and dependency management

---

## Technologies Used

- Java 17+  
- Spring Boot  
- Spring Data JPA  
- MySQL  
- HTML, CSS, JavaScript, Bootstrap  
- Maven

---

## Key Functionalities

- **Admin Login**
  - Secure login for shop owner using username and password.

- **Product Management (CRUD)**
  - **Add Product**: Enter model name, brand, price, stock quantity, features, warranty period, and created date.  
  - **View Products**: List all products with search and filter functionality.  
  - **Update Product**: Modify product details like price, stock, features, and warranty.  
  - **Delete Product**: Remove discontinued or unwanted products with confirmation.

- **Search & Filter**
  - Search products by brand or model name.  
  - Filter products by price range or brand.

- **Low Stock Alert**
  - Automatically view products with stock less than 5 units.

---

## Database Schema

### Table: `products`
| Column          | Type   | Description                        |
|-----------------|--------|------------------------------------|
| prodid          | INT PK | Auto-generated product ID          |
| model_name      | VARCHAR | Mobile model name                  |
| brand           | VARCHAR | Brand name                         |
| price           | FLOAT   | Product price (>0)                 |
| stock_quantity  | INT     | Stock count (≥0)                   |
| features        | TEXT    | Product specifications             |
| warranty_period | VARCHAR | Warranty period                    |
| created_at      | DATE    | Date product was added             |

### Table: `admins`
| Column      | Type     | Description                        |
|-------------|----------|------------------------------------|
| id          | INT PK   | Auto-generated admin ID            |
| shop_name   | VARCHAR  | Name of the shop                   |
| owner_name  | VARCHAR  | Owner's name                       |
| email       | VARCHAR  | Contact email                      |
| phone       | VARCHAR  | Contact number                     |
| username    | VARCHAR  | Login username                     |
| password    | VARCHAR  | Login password                     |
| address     | VARCHAR  | Shop address                       |

---

## How to Run the Project

1. **Clone the Repository**
    ```bash
    git clone https://github.com/rahulthakare04/mobile-shop-admin-system.git
    cd mobile-shop-admin-system
    ```

2. **Create the Database**
    ```sql
    CREATE DATABASE mobile_shop_admin;
    ```

3. **Configure Database Connection** in `application.properties`
    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/mobile_shop_admin
    spring.datasource.username=YOUR_DB_USERNAME
    spring.datasource.password=YOUR_DB_PASSWORD
    spring.jpa.hibernate.ddl-auto=update
    spring.jpa.show-sql=true
    ```

4. **Build & Run**
    ```bash
    mvn clean install
    mvn spring-boot:run
    ```

5. **Access the Application**
    - Open browser and go to: [http://localhost:8080](http://localhost:8080)  
    - Login with admin credentials.

---

## Video Execution

Watch the full execution of the application here:  
[🎥 View Video Demo](#) *(Replace `#` with YouTube or Drive link)*

---

## Screenshots

*(Add images showing Login Page, Product List, Add/Edit Product Form, Low-Stock View.)*

---

## Future Enhancements

- Encrypt admin passwords for better security.  
- Implement role-based access control.  
- Add product image upload feature.  
- Enable pagination in product listing.  
- Generate sales and inventory reports.

---

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

---

## License

This project is licensed under the MIT License.
