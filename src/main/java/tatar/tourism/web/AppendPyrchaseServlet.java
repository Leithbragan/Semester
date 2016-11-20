package tatar.tourism.web;


import tatar.tourism.dao.BookDao;
import tatar.tourism.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/append")
public class AppendPyrchaseServlet extends HttpServlet {
    static BookDao bookDao = DaoFactory.getDAOFactory(1).getBookDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        HttpSession session = req.getSession(true);
        Purchases purchases = (Purchases) session.getAttribute("purchases");
        if (purchases == null) {
            purchases = new Purchases();
            session.setAttribute("purchases", purchases);
        }

        String book = req.getParameter("id");
        if (book != null) {
            purchases.add(bookDao.read(Integer.valueOf(book)));
        }
        String message = "Книга добавлена в покупки";
        req.setAttribute("purchases", purchases);
        resp.getWriter().write(
                message);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    }
}
