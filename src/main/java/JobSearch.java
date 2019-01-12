import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
@WebServlet("/JobSearch")


public class JobSearch extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Connection con = ConnectionManger.getConnection();
        String jc= request.getParameter("JOBCATEGORY");

        try {            RequestDispatcher rd = request.getRequestDispatcher("JobSearch.jsp");
            rd.include(request, response);

            out.print(request.getParameter("JOBCATEGORY"));
            String query="select * from JOB ";
            PreparedStatement p = con.prepareStatement(query);
            ResultSet rs = p.executeQuery();

            while(rs.next()){
 //rd.forward(request,response);
            }

        }



        catch (Exception e) {

        }


    }
    }

