<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Products - Mobile Shop Admin</title>
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
            max-width: 1000px;
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

        .search-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
            gap: 30px;
            margin-bottom: 30px;
        }

        .search-card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .search-card:hover {
            transform: translateY(-5px);
        }

        .card-icon {
            width: 60px;
            height: 60px;
            margin: 0 auto 20px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 24px;
        }

        .card-title {
            color: #333;
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 10px;
            text-align: center;
        }

        .card-description {
            color: #666;
            font-size: 14px;
            text-align: center;
            margin-bottom: 25px;
            line-height: 1.5;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            color: #333;
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 14px;
        }

        select,
        input[type="number"] {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e1e1e1;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s ease;
            background-color: #fafafa;
        }

        select:focus,
        input[type="number"]:focus {
            outline: none;
            border-color: #667eea;
            background-color: white;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        .price-range {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .price-range input {
            flex: 1;
        }

        .price-separator {
            color: #667eea;
            font-weight: 600;
            font-size: 16px;
        }

        .btn {
            width: 100%;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 10px;
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

        .results-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: none;
        }

        .results-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 20px 30px;
            text-align: center;
        }

        .results-count {
            font-size: 18px;
            font-weight: 600;
        }

        .results-table {
            width: 100%;
            border-collapse: collapse;
        }

        .results-table th {
            background: #f8f9fa;
            padding: 15px 20px;
            text-align: left;
            font-weight: 600;
            color: #333;
            border-bottom: 2px solid #e1e1e1;
        }

        .results-table td {
            padding: 15px 20px;
            border-bottom: 1px solid #e1e1e1;
            vertical-align: top;
        }

        .results-table tr:hover {
            background-color: #f8f9fa;
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

        .warranty {
            background: #fff3cd;
            color: #856404;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 600;
            display: inline-block;
        }

        .no-results {
            text-align: center;
            padding: 40px;
            color: #666;
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

        .search-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 20px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 30px;
        }

        /* Mobile Responsive */
        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }

            .header {
                padding: 20px;
                margin: 0 10px 20px 10px;
            }

            .search-cards {
                grid-template-columns: 1fr;
                gap: 20px;
                margin: 0 10px;
            }

            .search-card {
                padding: 25px 20px;
            }

            .price-range {
                flex-direction: column;
                align-items: stretch;
            }

            .price-separator {
                text-align: center;
                margin: 5px 0;
            }

            .results-header {
                padding: 15px 20px;
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
            <div class="search-icon">🔍</div>
            <h1>Search Products</h1>
            <p>Find mobile phones using our smart search tools</p>
        </div>

        <!-- Search Cards -->
        <div class="search-cards">
            <!-- Brand Explorer Card -->
            <div class="search-card">
                <div class="card-icon">📱</div>
                <h2 class="card-title">Brand Explorer</h2>
                <p class="card-description">
                    Discover all mobile phones from your favorite brands. 
                    Browse through Samsung, Apple, OnePlus and more.
                </p>
                
                <form id="brandSearchForm" action="/serchByBrand" method="post">
                    <div class="form-group">
                        <label for="brandSelect">Select Brand</label>
                        <select id="brandSelect" name="brand" required>
                            <option value="">Choose a Brand</option>
                            <option value="Samsung">Samsung</option>
                            <option value="Apple">Apple</option>
                            <option value="OnePlus">OnePlus</option>
                            <option value="Xiaomi">Xiaomi</option>
                            <option value="Vivo">Vivo</option>
                            <option value="Realme">Realme</option>
                            <option value="Oppo">Oppo</option>
                            <option value="Nothing">Nothing</option>
                            <option value="Google">Google</option>
                            <option value="Motorola">Motorola</option>
                        </select>
                    </div>
                    
                    <button type="submit" class="btn btn-primary" >
                        🔍 Explore Brand
                    </button>
                    <button type="button" class="btn btn-secondary" >
                        Clear Selection
                    </button>
                </form>
            </div>

            <!-- Price Ranger Card -->
            <div class="search-card">
                <div class="card-icon">💰</div>
                <h2 class="card-title">Price Ranger</h2>
                <p class="card-description">
                    Find mobile phones within your budget range. 
                    Set minimum and maximum price to see what's available.
                </p>
                
                <form id="priceSearchForm" action="/searchByPrice" method="post">
                    <div class="form-group">
                        <label>Price Range (₹)</label>
                        <div class="price-range">
                            <input type="number" id="minPrice" name="minPrice" 
                                   placeholder="Min Price" min="0" step="1000">
                            <span class="price-separator">to</span>
                            <input type="number" id="maxPrice" name="maxPrice" 
                                   placeholder="Max Price" min="0" step="1000">
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary" >
                        💰 Find in Range
                    </button>
                    <button type="button" class="btn btn-secondary" onclick="clearPriceSearch()">
                        Reset Range
                    </button>
                </form>
            </div>
        </div>

        

        <!-- Footer -->
        <div class="footer">
            <p>&copy; 2025 Rahul Thakare | Mobile Shop Admin System</p>
        </div>
    </div>

   
</body>
</html>