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

@WebServlet("/book_page")
public class BookPresentationServlet extends HttpServlet {
    static BookDao bookDao = DaoFactory.getDAOFactory(1).getBookDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String idBook = req.getParameter("id");
        Book book = bookDao.read(Integer.valueOf(idBook));
        req.setAttribute("book", book);
        getServletContext().getRequestDispatcher("/book_page.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//        resp.setContentType("text/html;charset=UTF-8");
//        String idBook = req.getParameter("id");
//        Book book = bookDao.read(Integer.valueOf(idBook));
//        req.setAttribute("bookSpecimen", book);
//        getServletContext().getRequestDispatcher("/book_page.jsp").forward(req, resp);
    }
}
