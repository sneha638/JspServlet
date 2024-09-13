<!DOCTYPE html>
<html>
<head>
    <title>Borrow Books</title>
    <style>
        body {
            font-family: 'Georgia', serif;
            background-color: #f9f8f7;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 50%;
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
            text-align: center;
        }
        h2 {
            margin-bottom: 30px;
            font-size: 28px;
            color: #4a4a4a;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label {
            margin-bottom: 8px;
            font-weight: bold;
            font-size: 18px;
        }
        input[type="number"] {
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            width: 100%;
            max-width: 300px;
        }
        input[type="submit"] {
            padding: 12px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #b0b0b0;
            border: 2px solid #a0a0a0;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, border-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #9a9a9a;
            border-color: #888888;
        }
        input[type="submit"]:active {
            background-color: #8a8a8a;
            border-color: #666666;
        }
        .links {
            margin-top: 20px;
        }
        .links a {
            text-decoration: none;
            color: #b0b0b0;
            font-weight: bold;
            margin-right: 20px;
            font-size: 16px;
        }
        .links a:hover {
            color: #9a9a9a;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Borrow a Book</h2>
        <form action="borrowbooks" method="post">
            <label for="bookId">Book ID:</label>
            <input type="number" id="bookId" name="bookId" required>
            <input type="submit" value="Borrow Book">
        </form>
        <div class="links">
            <a href="showallbooks">Show All Books</a>
            <a href="index.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
