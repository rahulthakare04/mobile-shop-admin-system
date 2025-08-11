<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product - Mobile Shop Admin</title>
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
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .form-container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .header h1 {
            color: #333;
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .header p {
            color: #666;
            font-size: 16px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-row {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }

        .form-row .form-group {
            flex: 1;
            margin-bottom: 0;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 500;
            font-size: 14px;
        }

        input[type="text"],
        input[type="number"],
        textarea,
        select {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e1e1e1;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s ease;
            background-color: #fafafa;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        textarea:focus,
        select:focus {
            outline: none;
            border-color: #667eea;
            background-color: white;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        textarea {
            resize: vertical;
            min-height: 100px;
            font-family: inherit;
        }

        .required {
            color: #dc2626;
        }

        .button-group {
            display: flex;
            gap: 15px;
            margin-top: 30px;
        }

        .btn {
            flex: 1;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            text-align: center;
            display: inline-block;
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

        .back-link {
            color: #667eea;
            text-decoration: none;
            margin-bottom: 20px;
            display: inline-block;
            font-weight: 500;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #e1e1e1;
            color: #666;
            font-size: 14px;
        }

        /* Mobile Responsive */
        @media (max-width: 768px) {
            .form-container {
                padding: 30px 20px;
                margin: 10px;
            }

            .form-row {
                flex-direction: column;
                gap: 0;
            }

            .form-row .form-group {
                margin-bottom: 20px;
            }

            .button-group {
                flex-direction: column;
            }

            .header h1 {
                font-size: 24px;
            }
        }

        /* Input validation styling */
        input:invalid {
            border-color: #dc2626;
        }

        input:valid {
            border-color: #10b981;
        }

        .success-message {
            background: #ecfdf5;
            color: #065f46;
            padding: 12px 15px;
            border-radius: 8px;
            border-left: 4px solid #10b981;
            margin-bottom: 20px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <!-- Back Navigation -->
        <a href="/dashboard" class="back-link">← Back to Dashboard</a>
        
        <!-- Header -->
        <div class="header">
            <h1>Add New Product</h1>
            <p>Add mobile phones to your inventory</p>
        </div>

        <!-- Success Message (Hidden by default) -->
        <div class="success-message" id="successMessage">
            Product added successfully!
        </div>

        <!-- Add Product Form -->
        <form action="/addNewProduct" method="POST" >
            <!-- Model Name and Brand Row -->
            <div class="form-row">
                <div class="form-group">
                    <label for="model_name">Model Name <span class="required">*</span></label>
                    <input type="text" id="model_name" name="model_name" required 
                           placeholder="e.g., Galaxy S24, iPhone 15 Pro">
                </div>
                <div class="form-group">
                    <label for="brand">Brand <span class="required">*</span></label>
                    <select id="brand" name="brand" required>
                        <option value="">Select Brand</option>
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
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>

            <!-- Price and Stock Row -->
            <div class="form-row">
                <div class="form-group">
                    <label for="price">Price (₹) <span class="required">*</span></label>
                    <input type="number" id="price" name="price" min="1" step="0.01" required 
                           placeholder="e.g., 45999">
                </div>
                <div class="form-group">
                    <label for="stock_quantity">Stock Quantity <span class="required">*</span></label>
                    <input type="number" id="stock_quantity" name="stock_quantity" min="0" required 
                           placeholder="e.g., 25">
                </div>
            </div>

            <!-- Features -->
            <div class="form-group">
                <label for="features">Features</label>
                <textarea id="features" name="features" 
                          placeholder="e.g., 6.7 inch AMOLED display, 50MP camera, 5000mAh battery, 5G enabled, 256GB storage, Fast charging"></textarea>
            </div>

            <!-- Warranty Period -->
            <div class="form-group">
                <label for="warranty_period">Warranty Period</label>
                <select id="warranty_period" name="warranty_period">
                    <option value="">Select Warranty</option>
                    <option value="6 months">6 Months</option>
                    <option value="1 year">1 Year</option>
                    <option value="2 years">2 Years</option>
                    <option value="3 years">3 Years</option>
                </select>
            </div>

            <!-- Action Buttons -->
            <div class="button-group">
                <button type="submit" class="btn btn-primary">Add Product</button>
                <button type="reset" class="btn btn-secondary">Clear Form</button>
            </div>
        </form>

        <!-- Footer -->
        <div class="footer">
            <p>&copy; 2025 Rahul Thakare | Mobile Shop Admin System</p>
        </div>
    </div>

    <script>
        // Form submission handling
        document.getElementById('productForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Simple form validation
            const modelName = document.getElementById('model_name').value;
            const brand = document.getElementById('brand').value;
            const price = document.getElementById('price').value;
            const stock = document.getElementById('stock_quantity').value;
            
            if (!modelName || !brand || !price || !stock) {
                alert('Please fill in all required fields');
                return;
            }
            
            if (parseFloat(price) <= 0) {
                alert('Price must be greater than 0');
                return;
            }
            
            if (parseInt(stock) < 0) {
                alert('Stock quantity cannot be negative');
                return;
            }
            
            // Show success message (in real app, this would be handled by backend)
            document.getElementById('successMessage').style.display = 'block';
            
            // In real application, submit to backend
            // this.submit();
            
            console.log('Form data ready for backend submission');
        });

        // Clear form functionality
        document.querySelector('.btn-secondary').addEventListener('click', function() {
            document.getElementById('successMessage').style.display = 'none';
        });

      
    </script>
</body>
</html>