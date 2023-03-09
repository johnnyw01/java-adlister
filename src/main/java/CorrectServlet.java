import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CorrectServlet", urlPatterns = "/correct")
public class CorrectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "You Won!");
        request.getRequestDispatcher("/outcome.jsp").forward(request, response);
    }

}
