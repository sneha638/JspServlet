package com.example.library;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet("/addbook")
public class AddBookServlet extends HttpServlet {
    private SessionFactory sessionFactory;

    public AddBookServlet() {
        sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setAvailable(true);
        session.save(book);

        transaction.commit();
        session.close();
        response.sendRedirect("index.jsp");
    }
}
