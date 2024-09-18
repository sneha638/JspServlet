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

@WebServlet("/borrowbooks")
public class  BorrowBooksServlet extends HttpServlet {
    private SessionFactory sessionFactory;
    public BorrowBooksServlet(){
        sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Book book = session.get(Book.class, bookId);
        if (book != null) {
            book.setAvailable(false);
            session.update(book);
        }
        transaction.commit();
        session.close();
        response.sendRedirect("showallbooks");
    }
}
