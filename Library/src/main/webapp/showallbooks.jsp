<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show All Books</title>
    <style>
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            background-color: #f9f8f7; /* Light beige for a library-like feel */
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            width: 80%;
            max-width: 1000px;
            background-color: #fff;
            padding: 20px;
            margin-top: 30px; /* Increased margin for better spacing */
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* Deeper shadow for enhanced depth */
            text-align: center;
        }

        h2 {
            color: #4a4a4a; /* Slightly muted dark gray */
            margin-bottom: 20px;
            font-size: 28px; /* Larger font size for headings */
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
            background-color: #b0b0b0; /* Ash color */
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
        }

        .button-container a:hover {
            background-color: #8c8c8c; /* Slightly darker shade on hover */
        }

        .button-container a:active {
            background-color: #6e6e6e; /* Even darker shade on click */
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
                ResultSet rs = (ResultSet) request.getAttribute("books");
                if (rs != null) {
                    try {
                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String title = rs.getString("title");
                            String author = rs.getString("author");
                            boolean available = rs.getBoolean("available");
            %>
            <tr>
                <td><%= id %></td>
                <td><%= title %></td>
                <td><%= author %></td>
                <td><%= available ? "Yes" : "No" %></td>
            </tr>
            <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
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
