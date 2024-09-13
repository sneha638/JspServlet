<%@ page import="java.util.List" %>
<%@ page import="com.example.library.Book" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show All Books</title>
    <style>
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            background-color: #f9f8f7;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            width: 80%;
            max-width: 1000px;
            background-color: #fff;
            padding: 20px;
            margin-top: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #4a4a4a;
            margin-bottom: 20px;
            font-size: 28px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #b0b0b0;
            color: #fff;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .button-container {
            margin-top: 20px;
        }

        .button-container a {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #b0b0b0;
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
        }

        .button-container a:hover {
            background-color: #8c8c8c;
        }

        .button-container a:active {
            background-color: #6e6e6e;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>All Books</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Available</th>
            </tr>
            <%
                List<Book> books = (List<Book>) request.getAttribute("books");
                if (books != null && !books.isEmpty()) {
                    for (Book book : books) {
                        int id = book.getId();
                        String title = book.getTitle();
                        String author = book.getAuthor();
                        boolean available = book.isAvailable();
            %>
            <tr>
                <td><%= id %></td>
                <td><%= title %></td>
                <td><%= author %></td>
                <td><%= available ? "Yes" : "No" %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="4">No books available</td>
            </tr>
            <%
                }
            %>
        </table>
        <div class="button-container">
            <a href="addbook.jsp">Add New Book</a>
            <a href="index.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
