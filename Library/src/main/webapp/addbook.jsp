<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
    <style>
        body {
            font-family: 'Georgia', serif; /* Use a more traditional font */
            background-color: #f9f8f7; /* Light beige background */
            margin: 0;
            padding: 0;
            color: #333; /* Darker text color for readability */
        }
        .container {
            width: 50%;
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
            margin: 50px auto; /* Center the container with space from top */
        }
        h2 {
            margin-bottom: 30px;
            font-size: 28px;
            color: #4a4a4a; /* Slightly muted dark gray */
            text-align: center;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 8px;
            font-weight: bold;
            font-size: 18px;
        }
        input[type="text"] {
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            width: 100%; /* Full width for input fields */
        }
        input[type="submit"] {
            padding: 12px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #b0b0b0; /* Ash color for background */
            border: 2px solid #a0a0a0; /* Slightly darker border */
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, border-color 0.3s; /* Smooth transition */
        }
        input[type="submit"]:hover {
            background-color: #9a9a9a; /* Darker ash color on hover */
            border-color: #888888; /* Darker border on hover */
        }
        input[type="submit"]:active {
            background-color: #8a8a8a; /* Even darker ash color on active */
            border-color: #666666; /* Darker border on active */
        }
        .links {
            margin-top: 20px;
            text-align: center;
        }
        .links a {
            text-decoration: none;
            color: #b0b0b0; /* Ash color for links */
            font-weight: bold;
            margin-right: 20px;
            font-size: 16px;
        }
        .links a:hover {
            color: #9a9a9a; /* Darker ash color on hover */
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Book</h2>
        <form action="addbook" method="post">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>
            <label for="author">Author:</label>
            <input type="text" id="author" name="author" required>
            <input type="submit" value="Add Book">
        </form>
        <div class="links">
            <a href="index.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
