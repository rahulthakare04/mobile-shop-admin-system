<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Product - Mobile Shop Admin</title>
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
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .header {
            background: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            text-align: center;
        }

        .header h1 {
            color: #333;
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .header p {
            color: #666;
            font-size: 16px;
        }

        .form-container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 600;
            font-size: 14px;
        }

        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e1e1e1;
            border-radius: 8px;
            font-size: 14px;
            transition: border-color 0.3s ease;
        }

        .form-group input:focus {
            outline: none;
            border-color: #667eea;
        }

        .btn {
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
            text-align: center;
            margin-right: 10px;
        }

        .btn-danger {
            background: #dc3545;
            color: white;
        }

        .btn-danger:hover {
            background: #c82333;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(220, 53, 69, 0.3);
        }

        .btn-secondary {
            background: #f8f9fa;
            color: #333;
            border: 2px solid #e1e1e1;
        }

        .btn-secondary:hover {
            background: #e9ecef;
            border-color: #adb5bd;
        }

        .delete-warning {
            background: #f8d7da;
            color: #721c24;
            padding: 15px;
            border-radius: 8px;
            border-left: 4px solid #dc3545;
            margin-bottom: 25px;
            font-size: 14px;
        }

        .form-actions {
            text-align: center;
            margin-top: 30px;
        }

        .back-link {
            color: white;
            text-decoration: none;
            font-weight: 500;
            margin-bottom: 20px;
            display: inline-block;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            color: rgba(255, 255, 255, 0.8);
            font-size: 14px;
        }

        /* Mobile Responsive */
        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }

            .header, .form-container {
                margin: 0 10px 20px 10px;
            }

            .header {
                padding: 20px;
            }

            .form-container {
                padding: 30px 20px;
            }

            .btn {
                width: 100%;
                margin: 5px 0;
            }

            .form-actions {
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Back Navigation -->
        <a href="/viewProducts" class="back-link">← Back to Product List</a>
        
        <!-- Header -->
        <div class="header">
            <h1>Delete Product</h1>
            <p>Remove product from inventory</p>
        </div>

        <!-- Delete Form -->
        <div class="form-container">
            <div class="delete-warning">
                <strong>Warning:</strong> This action cannot be undone. The product will be permanently removed from your inventory.
            </div>

            <form action="/productDelete" method="post">
                <div class="form-group">
                    <label for="productId">Product ID:</label>
                    <input type="number" id="productId" name="prodid" placeholder="Enter Product ID to delete" required>
                </div>

                <div class="form-actions">
                    <button type="submit" class="btn btn-danger">Delete Product</button>
                    <a href="/dashboard" class="btn btn-secondary">Cancel</a>
                </div>
            </form>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>&copy; 2025 Rahul Thakare | Mobile Shop Admin System</p>
        </div>
    </div>

</body>
</html>