package tatar.tourism.security;



import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "loggedInFilter", urlPatterns = {"/register", "/register.jsp", "/login", "/login.jsp"})
public class LoggedInFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        if (((HttpServletRequest) request).getSession().getAttribute("user") == null) {
            chain.doFilter(request, response);
        } else {
            ((HttpServletRequest) request).getServletContext().getRequestDispatcher("/index.jsp").forward(httpRequest, httpResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
