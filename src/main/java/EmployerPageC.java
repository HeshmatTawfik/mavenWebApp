import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/EmployerPageC")
public class EmployerPageC extends HttpServlet {
    public static   int postedBy = UserDAO.employerID.getId();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {



        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print("<h1>"+postedBy+"</h1>");
        out.print("<h1>hello app</h1>");
        out.print("<h1>hello app</h1>");

        RequestDispatcher rs=request.getRequestDispatcher("EmployerPage.jsp");
        out.print("<h1>hello app</h1>");

        rs.include(request,response);
        out.print("<h1>hello app</h1>");

        out.print("<h1>hello app</h1>");











    }

}