<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Shop Admin Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
        }

        /* Header */
        .header {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            padding: 20px 0;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .header-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo h1 {
            font-size: 28px;
            font-weight: 600;
        }

        .logo p {
            font-size: 14px;
            opacity: 0.9;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .welcome-text {
            text-align: right;
        }

        .welcome-text h3 {
            font-size: 16px;
            font-weight: 500;
        }

        .welcome-text p {
            font-size: 12px;
            opacity: 0.8;
        }

        .logout-btn {
            background: rgba(255,255,255,0.2);
            color: white;
            border: 2px solid rgba(255,255,255,0.3);
            padding: 8px 16px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
            transition: all 0.3s ease;
        }

        .logout-btn:hover {
            background: rgba(255,255,255,0.3);
            border-color: rgba(255,255,255,0.5);
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 30px 20px;
        }

        /* Dashboard Cards */
        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
            margin-bottom: 40px;
        }

        .card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            text-align: center;
            transition: all 0.3s ease;
            border: 1px solid rgba(0,0,0,0.05);
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.15);
        }

        .card-icon {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 36px;
            color: white;
        }

        .card-icon.add {
            background: linear-gradient(135deg, #4facfe, #00f2fe);
        }

        .card-icon.view {
            background: linear-gradient(135deg, #43e97b, #38f9d7);
        }

        .card-icon.update {
            background: linear-gradient(135deg, #fa709a, #fee140);
        }

        .card-icon.delete {
            background: linear-gradient(135deg, #ff6b6b, #ee5a52);
        }

        .card-icon.search {
            background: linear-gradient(135deg, #a8edea, #fed6e3);
        }

        .card-icon.stock {
            background: linear-gradient(135deg, #ffeaa7, #fab1a0);
        }

        .card h3 {
            color: #333;
            font-size: 20px;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .card p {
            color: #666;
            font-size: 14px;
            line-height: 1.5;
            margin-bottom: 20px;
        }

        .btn {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            transition: all 0.3s ease;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.3);
        }

        /* Hero Image Section */
        .hero-section {
            background: white;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            margin-bottom: 40px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        .hero-section h2 {
            color: #333;
            font-size: 32px;
            margin-bottom: 15px;
            font-weight: 600;
        }

        .hero-section p {
            color: #666;
            font-size: 18px;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .mobile-showcase {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px;
            margin: 30px 0;
            flex-wrap: wrap;
        }

        .phone-icon {
            width: 80px;
            height: 120px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            border-radius: 15px;
            position: relative;
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.3);
            animation: float 3s ease-in-out infinite;
        }

        .phone-icon:nth-child(2) {
            animation-delay: -1s;
            background: linear-gradient(135deg, #ff6b6b, #ee5a52);
        }

        .phone-icon:nth-child(3) {
            animation-delay: -2s;
            background: linear-gradient(135deg, #43e97b, #38f9d7);
        }

        .phone-icon::before {
            content: "";
            position: absolute;
            top: 10px;
            left: 50%;
            transform: translateX(-50%);
            width: 60%;
            height: 80%;
            background: rgba(255,255,255,0.9);
            border-radius: 8px;
        }

        .phone-icon::after {
            content: "📱";
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 32px;
            z-index: 1;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }

        .brand-logos {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 30px;
            margin-top: 30px;
            flex-wrap: wrap;
        }

        .brand-logo {
            padding: 10px 20px;
            background: linear-gradient(135deg, #f8f9fa, #e9ecef);
            border-radius: 25px;
            font-weight: 600;
            color: #333;
            font-size: 14px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 20px;
            color: #666;
            font-size: 12px;
        }

        .footer strong {
            color: #333;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                gap: 15px;
                text-align: center;
            }

            .user-info {
                flex-direction: column;
                gap: 10px;
            }

            .container {
                padding: 20px 15px;
            }

            .dashboard-cards {
                grid-template-columns: 1fr;
                gap: 20px;
            }

            .stats-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .mobile-showcase {
                gap: 15px;
            }

            .phone-icon {
                width: 60px;
                height: 90px;
            }

            .brand-logos {
                gap: 15px;
            }

            .brand-logo {
                padding: 8px 15px;
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <div class="header-content">
            <div class="logo">
                <h1>Mobile Shop Admin</h1>
                <p>Product Management System</p>
            </div>
            <div class="user-info">
                <div class="welcome-text">
                    <h3>Welcome, ${name}</h3>
                    
                </div>
                <a href="/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </div>

    <div class="container">
        <!-- Hero Section with Mobile Images -->
        <div class="hero-section">
            <div class="hero-content">
                <h2>Manage Your Mobile Shop Inventory</h2>
                <p>Streamline your mobile phone business with our comprehensive product management system</p>
                
                <div class="mobile-showcase">
                    <div class="phone-icon"></div>
                    <div class="phone-icon"></div>
                    <div class="phone-icon"></div>
                </div>
                
                <div class="brand-logos">
                    <div class="brand-logo">Samsung</div>
                    <div class="brand-logo">Apple</div>
                    <div class="brand-logo">OnePlus</div>
                    <div class="brand-logo">Xiaomi</div>
                    <div class="brand-logo">Vivo</div>
                    <div class="brand-logo">Realme</div>
                </div>
            </div>
        </div>

        <!-- Dashboard Cards -->
        <div class="dashboard-cards">
            <!-- Add New Product -->
            <div class="card">
                <div class="card-icon add">+</div>
                <h3>Add New Product</h3>
                <p>Add new mobile phones to your inventory with complete details and specifications.</p>
                <a href="/productsadd" class="btn">Add Product</a>
            </div>

            <!-- View All Products -->
            <div class="card">
                <div class="card-icon view">📱</div>
                <h3>View Products</h3>
                <p>Browse and manage all products in your inventory with sorting and filtering options.</p>
                <a href="/viewProducts" class="btn">View All</a>
            </div>

            <!-- Update Product -->
            <div class="card">
                <div class="card-icon update">✏️</div>
                <h3>Update Product</h3>
                <p>Edit product details, update prices, stock quantities and product specifications.</p>
                <a href="/updateProducts" class="btn">Update</a>
            </div>

            <!-- Delete Product -->
            <div class="card">
                <div class="card-icon delete">🗑️</div>
                <h3>Delete Product</h3>
                <p>Remove discontinued or unwanted products from your inventory safely.</p>
                <a href="/deleteProduct" class="btn">Manage</a>
            </div>

            <!-- Search Products -->
            <div class="card">
                <div class="card-icon search">🔍</div>
                <h3>Search Products</h3>
                <p>Search products by brand, model name or filter by price range for quick access.</p>
                <a href="/searchProducts" class="btn">Search</a>
            </div>

            <!-- Low Stock Alert -->
            <div class="card">
                <div class="card-icon stock">⚠️</div>
                <h3>Low Stock Alert</h3>
                <p>View products with low stock levels (less than 5 units) that need restocking.</p>
                <a href="/low-stockProducts" class="btn">Check Stock</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p><strong>Mobile Shop Product Admin System</strong></p>
        <p>Rahul Thakare | 80105 25150 | &copy; 2025 All Rights Reserved</p>
    </div>
</body>
</html>