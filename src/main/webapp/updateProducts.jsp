<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product - Mobile Shop Admin</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
            min-height: 100vh;
            padding: 20px;
        }

        .main-container {
            max-width: 1200px;
            margin: 0 auto;
            padding-top: 40px;
        }

        .header-section {
            background: white;
            border-radius: 20px;
            padding: 40px;
            text-align: center;
            margin-bottom: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .header-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 20px;
            background: linear-gradient(135deg, #6366f1, #8b5cf6);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }

        .header-icon::before {
            content: '📝';
            font-size: 35px;
        }

        .header-title {
            color: #374151;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .header-subtitle {
            color: #6b7280;
            font-size: 16px;
            line-height: 1.5;
        }

        .cards-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }

        .card {
            background: white;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-icon {
            width: 60px;
            height: 60px;
            margin: 0 auto 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
        }

        .price-icon {
            background: linear-gradient(135deg, #f59e0b, #d97706);
        }

        .stock-icon {
            background: linear-gradient(135deg, #10b981, #059669);
        }

        .card-title {
            color: #374151;
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 15px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            color: #374151;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .form-input {
            width: 100%;
            padding: 12px 16px;
            border: 2px solid #e5e7eb;
            border-radius: 10px;
            font-size: 14px;
            transition: border-color 0.3s ease;
            background: #f9fafb;
        }

        .form-input:focus {
            outline: none;
            border-color: #6366f1;
            background: white;
        }

        .btn {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 12px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #6366f1, #8b5cf6);
            color: white;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(99, 102, 241, 0.3);
        }

        .currency-symbol {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: #6b7280;
            font-weight: 600;
        }

        .price-input-wrapper {
            position: relative;
        }

        .price-input-wrapper .form-input {
            padding-left: 30px;
        }

        @media (max-width: 768px) {
            .cards-container {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            
            .header-section {
                padding: 30px 20px;
            }
            
            .card {
                padding: 25px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="main-container">
        <div class="header-section">
            <div class="header-icon"></div>
            <h1 class="header-title">Update Product</h1>
            <p class="header-subtitle">Update product prices and stock quantities</p>
        </div>

        <div class="cards-container">
            <!-- Update Price Card -->
            <div class="card">
                <div class="card-icon price-icon">💰</div>
                <h2 class="card-title">Update Price</h2>
                
                <form class="price-form" method="POST" action="/updatePrice">
                    <div class="form-group">
                        <label class="form-label">Product ID</label>
                        <input type="text" class="form-input" name="prodid" required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Price (₹)</label>
                        <div class="price-input-wrapper">
                            <span class="currency-symbol">₹</span>
                            <input type="number" class="form-input" name="price" min="0" step="0.01" required>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn">
                        💰 Update Price
                    </button>
                </form>
            </div>

            <!-- Update Stock Card -->
            <div class="card">
                <div class="card-icon stock-icon">📦</div>
                <h2 class="card-title">Update Stock</h2>
                
                <form class="stock-form" method="POST" action="/updateStock">
                    <div class="form-group">
                        <label class="form-label">Product ID</label>
                        <input type="text" class="form-input" name="prodid" required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Stock Quantity</label>
                        <input type="number" class="form-input" name="stock_quantity" min="0" required>
                    </div>
                    
                    <button type="submit" class="btn">
                        📦 Update Stock
                    </button>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Real-time validation
        document.querySelectorAll('.form-input').forEach(input => {
            input.addEventListener('input', function() {
                if (this.checkValidity()) {
                    this.style.borderColor = '#10b981';
                } else {
                    this.style.borderColor = '#ef4444';
                }
            });
        });
    </script>
</body>
</html>