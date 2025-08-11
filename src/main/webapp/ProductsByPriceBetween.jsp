<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List - Mobile Shop Admin</title>
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

        .actions {
            background: white;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 15px;
        }

        .search-box {
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .search-box input {
            padding: 10px 15px;
            border: 2px solid #e1e1e1;
            border-radius: 8px;
            font-size: 14px;
            width: 250px;
        }

        .search-box input:focus {
            outline: none;
            border-color: #667eea;
        }

        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .btn-primary {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(102, 126, 234, 0.3);
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

        .btn-success {
            background: #28a745;
            color: white;
        }

        .btn-success:hover {
            background: #218838;
        }

        .btn-warning {
            background: #ffc107;
            color: #212529;
        }

        .btn-warning:hover {
            background: #e0a800;
        }

        .btn-danger {
            background: #dc3545;
            color: white;
        }

        .btn-danger:hover {
            background: #c82333;
        }

        .btn-sm {
            padding: 5px 10px;
            font-size: 12px;
        }

        .table-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

        .table th {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 15px 12px;
            text-align: left;
            font-weight: 600;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .table td {
            padding: 12px;
            border-bottom: 1px solid #e1e1e1;
            vertical-align: top;
        }

        .table tr:hover {
            background-color: #f8f9fa;
        }

        .table tr:last-child td {
            border-bottom: none;
        }

        .product-id {
            font-weight: 600;
            color: #667eea;
        }

        .model-name {
            font-weight: 600;
            color: #333;
        }

        .brand {
            background: #e3f2fd;
            color: #1976d2;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 600;
            display: inline-block;
        }

        .price {
            font-weight: 600;
            color: #28a745;
            font-size: 16px;
        }

        .stock {
            font-weight: 600;
        }

        .stock.low {
            color: #dc3545;
            background: #f8d7da;
            padding: 4px 8px;
            border-radius: 4px;
        }

        .stock.medium {
            color: #ffc107;
        }

        .stock.high {
            color: #28a745;
        }

        .features {
            max-width: 200px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            color: #666;
            font-size: 13px;
        }

        .warranty {
            background: #fff3cd;
            color: #856404;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 600;
            display: inline-block;
        }

        .created-at {
            color: #666;
            font-size: 12px;
        }

        .actions-cell {
            white-space: nowrap;
        }

        .no-products {
            text-align: center;
            padding: 40px;
            color: #666;
            font-size: 16px;
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

            .header, .actions, .table-container {
                margin: 0 10px 20px 10px;
            }

            .header {
                padding: 20px;
            }

            .actions {
                flex-direction: column;
                align-items: stretch;
                padding: 20px;
            }

            .search-box {
                justify-content: center;
            }

            .search-box input {
                width: 100%;
                max-width: 300px;
            }

            .table {
                font-size: 12px;
            }

            .table th,
            .table td {
                padding: 8px 6px;
            }

            .features {
                max-width: 120px;
            }

            .actions-cell .btn {
                display: block;
                margin: 2px 0;
            }
        }

        @media (max-width: 480px) {
            .table-container {
                overflow-x: auto;
            }

            .table {
                min-width: 800px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Back Navigation -->
        <a href="/dashboard" class="back-link">← Back to Dashboard</a>
        
        <!-- Header -->
        <div class="header">
            <h1>Search Result</h1>
            <p>Manage your mobile shop products</p>
        </div>

      <!-- Price Range Info -->
<div style="background: white; padding: 15px 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 30px; text-align: center;">
    <span style="color: #666; font-size: 14px;">Price Range: ₹${minPrice} - ₹${maxPrice}</span>
</div>

        <!-- Products Table -->
        <div class="table-container">
            <c:choose>
                <c:when test="${empty products}">
                    <div class="no-products">
                        <h3>No Products Found</h3>
                        <p>Start by adding your first mobile product to the inventory.</p>
                        <a href="/products/add" class="btn btn-primary" style="margin-top: 15px;">Add First Product</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <table class="table" id="productsTable">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Model Name</th>
                                <th>Brand</th>
                                <th>Price (₹)</th>
                                <th>Stock</th>
                                <th>Features</th>
                                <th>Warranty</th>
                                <th>Created At</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${products}" var="product">
                                <tr>
                                    <td>
                                        <span class="product-id">#${product.prodid}</span>
                                    </td>
                                    <td>
                                        <span class="model-name">${product.model_name}</span>
                                    </td>
                                    <td>
                                        <span class="brand">${product.brand}</span>
                                    </td>
                                    <td>
                                        <span class="price">₹${product.price}</span>
                                    </td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${product.stock_quantity < 5}">
                                                <span class="stock low">${product.stock_quantity} units</span>
                                            </c:when>
                                            <c:when test="${product.stock_quantity < 20}">
                                                <span class="stock medium">${product.stock_quantity} units</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="stock high">${product.stock_quantity} units</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <span class="features" title="${product.features}">
                                            <c:choose>
                                                <c:when test="${empty product.features}">
                                                    No features listed
                                                </c:when>
                                                <c:otherwise>
                                                    ${product.features}
                                                </c:otherwise>
                                            </c:choose>
                                        </span>
                                    </td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${empty product.warranty_period}">
                                                <span class="warranty">No Warranty</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="warranty">${product.warranty_period}</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <span class="created-at">${product.created_at}</span>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>&copy; 2025 Rahul Thakare | Mobile Shop Admin System</p>
        </div>
    </div>

</body>
</html>