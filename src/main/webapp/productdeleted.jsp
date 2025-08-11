<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Deleted Successfully - Mobile Shop Admin</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            padding: 40px;
            text-align: center;
            max-width: 500px;
            width: 100%;
            animation: slideIn 0.6s ease-out;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .success-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 20px;
            background: linear-gradient(135deg, #4CAF50, #45a049);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        .checkmark {
            color: white;
            font-size: 40px;
            font-weight: bold;
        }

        .title {
            color: #2c3e50;
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .message {
            color: #7f8c8d;
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 25px;
        }

        .product-info {
            background: #f8f9fa;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 30px;
            border-left: 4px solid #4CAF50;
        }

        .product-id {
            color: #2c3e50;
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .product-id-value {
            color: #e74c3c;
            font-family: 'Courier New', monospace;
            font-size: 18px;
            font-weight: bold;
        }

        .button-group {
            display: flex;
            gap: 15px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            transition: all 0.3s ease;
            min-width: 120px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.3);
        }

        .btn-secondary {
            background: #ecf0f1;
            color: #2c3e50;
            border: 2px solid #bdc3c7;
        }

        .btn-secondary:hover {
            background: #d5dbdb;
            transform: translateY(-2px);
        }

        .brand {
            position: absolute;
            top: 20px;
            left: 20px;
            color: white;
            font-weight: 700;
            font-size: 18px;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
        }

        @media (max-width: 480px) {
            .container {
                padding: 30px 20px;
                margin: 10px;
            }
            
            .button-group {
                flex-direction: column;
            }
            
            .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    
    <div class="container">
        <div class="success-icon">
            <div class="checkmark">✓</div>
        </div>
        
        <h1 class="title">Product Deleted Successfully!</h1>
        
        <p class="message">
            The product has been permanently removed from your inventory. This action cannot be undone.
        </p>
        
        <div class="product-info">
            <div class="product-id">Product ID:</div>
            <div class="product-id-value">${prodid}</div>
        </div>
        
        <div class="button-group">
            <a href="/viewProducts" class="btn btn-primary">
                View All Products
            </a>
            <a href="/dashboard" class="btn btn-secondary">
                Back to Dashboard
            </a>
        </div>
    </div>
</body>
</html>