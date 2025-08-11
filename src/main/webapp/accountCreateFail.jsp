<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Creation Failed</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #ef4444 0%, #dc2626 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .error-container {
            background: white;
            border-radius: 20px;
            padding: 40px;
            text-align: center;
            max-width: 400px;
            width: 100%;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .error-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 20px;
            background: #ef4444;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 40px;
        }

        .error-title {
            color: #dc2626;
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .error-message {
            color: #6b7280;
            font-size: 16px;
            margin-bottom: 30px;
        }

        .btn {
            padding: 12px 24px;
            margin: 0 10px;
            border: none;
            border-radius: 10px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        .btn-primary {
            background: #6366f1;
            color: white;
        }

        .btn-secondary {
            background: #f3f4f6;
            color: #374151;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="error-icon">✗</div>
        <h1 class="error-title">Account Creation Failed!</h1>
        <p class="error-message">Something went wrong. Please try again.</p>
        
        <a href="/" class="btn btn-primary">Try Again</a>
    </div>
</body>
</html>