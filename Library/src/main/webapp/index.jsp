<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <style>
        body {
            font-family: 'Georgia', serif; /* A more traditional, book-like font */
            background-color: #f9f8f7; /* Light beige background */
            margin: 0;
            padding: 0;
            color: #333; /* Darker text color for better readability */
        }

        .container {
            margin: 0 auto;
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
            text-align: center;
            margin-top: 50px; /* Space from the top */
        }

        h2 {
            margin-bottom: 30px;
            font-size: 28px;
            color: #4a4a4a; /* Slightly muted dark gray */
        }

        .button {
            display: inline-block;
            margin: 10px;
            padding: 15px 25px;
            font-size: 18px;
            color: white;
            background-color: #b0b0b0; /* Ash color background */
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            border: 2px solid #a0a0a0; /* Slightly darker border */
            transition: background-color 0.3s, border-color 0.3s; /* Smooth transition */
        }

        .button:hover {
            background-color: #9a9a9a; /* Darker ash color on hover */
            border-color: #888888; /* Darker border on hover */
        }

        .button:active {
            background-color: #8a8a8a; /* Even darker ash color on active */
            border-color: #666666; /* Darker border on active */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to the Library Management System</h2>
        <a href="addbook.jsp" class="button">Add New Book</a><br>
        <a href="showallbooks" class="button">Show All Books</a><br>
        <a href="borrowbooks.jsp" class="button">Borrowed Books</a>
    </div>
</body>
</html>
