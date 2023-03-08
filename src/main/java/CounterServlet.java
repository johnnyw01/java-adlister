import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    private int counter = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        counter += 1;
        if(counter == 1){
            response.getWriter().println("<h1>You've visited this page " + counter + " time!</h1>");
        }else{
            response.getWriter().println("<h1>You've visited this page " + counter + " times!</h1>");
        }
    }
}