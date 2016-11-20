package tatar.tourism.web;

import tatar.tourism.pojo.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/basket")
public class BasketServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        HttpSession session = req.getSession(true);
        Purchases books;
        books = (Purchases) session.getAttribute("purchases");
        req.setAttribute("books", books);
        getServletContext().getRequestDispatcher("/basket.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        HttpSession session = req.getSession(true);
        List<Book> books;
        books = (Purchases) session.getAttribute("books");
        String message = "Покупок нет";
        if (books == null) {
            req.setAttribute("massage", message);
        }
        req.setAttribute("books", books);
        getServletContext().getRequestDispatcher("/basket.jsp").forward(req, resp);
    }

}
