<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Not Found - Mobile Shop Admin</title>
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

        .error-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 20px;
            background: linear-gradient(135deg, #e74c3c, #c0392b);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            animation: shake 1s ease-in-out;
        }

        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            10%, 30%, 50%, 70%, 90% { transform: translateX(-5px); }
            20%, 40%, 60%, 80% { transform: translateX(5px); }
        }

        .error-mark {
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
            background: #fff5f5;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 30px;
            border-left: 4px solid #e74c3c;
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

        .suggestions {
            background: #f8f9fa;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 30px;
            text-align: left;
        }

        .suggestions h3 {
            color: #2c3e50;
            font-size: 16px;
            margin-bottom: 12px;
            text-align: center;
        }

        .suggestions ul {
            color: #7f8c8d;
            font-size: 14px;
            line-height: 1.6;
            padding-left: 20px;
        }

        .suggestions li {
            margin-bottom: 8px;
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
        <div class="error-icon">
            <div class="error-mark">✕</div>
        </div>
        
        <h1 class="title">Product Not Found</h1>
        
        <p class="message">
            The product you're looking for doesn't exist in the database or may have been removed.
        </p>
        
        <div class="product-info">
            <div class="product-id">Searched Product ID:</div>
            <div class="product-id-value">${prodid}</div>
        </div>
        
        <div class="suggestions">
            <h3>What you can do:</h3>
            <ul>
                <li>Check if the product ID is correct</li>
                <li>Search for the product by name or category</li>
                <li>The product might have been deleted previously</li>
                <li>Contact support if you believe this is an error</li>
            </ul>
        </div>
        
        <div class="button-group">
            <a href="/viewProducts" class="btn btn-primary">
                Browse Products
            </a>
            <a href="/dashboard" class="btn btn-secondary">
                Back to Dashboard
            </a>
        </div>
    </div>
</body>
</html>