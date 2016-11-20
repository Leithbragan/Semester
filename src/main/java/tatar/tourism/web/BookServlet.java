package tatar.tourism.web;

import tatar.tourism.dao.BookDao;
import tatar.tourism.dao.DaoFactory;
import tatar.tourism.pojo.Book;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet({"/library"})
public class BookServlet extends HttpServlet {
    static BookDao bookDao = DaoFactory.getDAOFactory(1).getBookDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        List<Book> bookList = null;
        try {
            bookList = bookDao.getAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("book", bookList);
        getServletContext().getRequestDispatcher("/library.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        List<Book> bookList = null;
        try {
            bookList = bookDao.getAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("book", bookList);
        getServletContext().getRequestDispatcher("/library.jsp").forward(req, resp);


    }
}
