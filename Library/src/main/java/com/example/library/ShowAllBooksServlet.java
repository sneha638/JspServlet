package com.example.library;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.cfg.Configuration;
import java.io.IOException;
import java.util.List;

@WebServlet("/showallbooks")
public class ShowAllBooksServlet extends HttpServlet {
    private SessionFactory sessionFactory;
    public ShowAllBooksServlet(){
        sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Session session = sessionFactory.openSession();
        Query<Book> query = session.createQuery("FROM Book", Book.class);
        List<Book> books = query.list();
        session.close();
        request.setAttribute("books", books);
        request.getRequestDispatcher("showallbooks.jsp").forward(request, response);
    }
}
