import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/guess.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String guess = request.getParameter("guess");
        int answer = new Random().nextInt(3)+1;

        if (guess != null && (guess.equals("1") || guess.equals("2") || guess.equals("3"))) {
            if (guess.equals(String.valueOf(answer))) {
                request.setAttribute("message", "You Won!");
                request.getRequestDispatcher("/correct.jsp?result=win").forward(request, response);
            } else {
                request.setAttribute("message", "You Lose!");
                request.getRequestDispatcher("/incorrect.jsp?result=loss").forward(request, response);
            }
        } else {
            response.sendRedirect("/guess");
        }
    }
}
