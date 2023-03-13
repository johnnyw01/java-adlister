import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ViewAdminProfileServlet", urlPatterns = "/adminProfile")
public class ViewAdminProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        request.setAttribute("username", username);
        request.getRequestDispatcher("/adminProfile.jsp").forward(request, response);
    }
}
