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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/EmpPostedJobs")
public class EmpPostedJobs extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();

        int posted = UserDAO.employerID.getId();
        session.setAttribute("EMPLOYERID",posted);
        Connection con = ConnectionManger.getConnection();

        String employerSqlLogin = "select * from JOB where POSTEDBY= 23";
        try {

            out.print("<h1>hello</h1>");
            String employerSqlLogin1 = "select * from JOB where POSTEDBY= ?";
            PreparedStatement p = con.prepareStatement(employerSqlLogin1);
            p.setInt(1, posted);
            ResultSet rs = p.executeQuery();

            while(rs.next()){

            }
            RequestDispatcher rd = request.getRequestDispatcher("EmpPostedJobs.jsp");
            rd.include(request, response);

            }



         catch (Exception e) {

        }


    }


}
