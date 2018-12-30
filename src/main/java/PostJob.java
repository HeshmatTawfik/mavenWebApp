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
import java.sql.Statement;

@WebServlet("/PostJob")
public class PostJob extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jobCategory = request.getParameter("jobCategory");
        String jobName = request.getParameter("jobName");
        String jobDescription = request.getParameter("jobDescription");
        PrintWriter out = response.getWriter();

        int postedBy = UserDAO.employerID.getId();

        String insert = " insert into JOB (JOBNAME, JOBDESCRIPTION, JOBCATEGORY, POSTEDBY, POSTDATE)"
                + " values (?,?,?,?,?)";

        try {
            Connection conn = ConnectionManger.getConnection();
            Statement st = conn.createStatement();
            PreparedStatement stmt = conn.prepareStatement(insert);
            stmt.setString(1, jobName);
            stmt.setString(2, jobDescription);
            stmt.setString(3, jobCategory);
            stmt.setInt(4, postedBy);
            stmt.setString(5, "-");
            boolean aa = stmt.execute();
            String isPosted = Boolean.toString(!aa);
            HttpSession session = request.getSession();
            session.setAttribute("isPosted", isPosted);
            session.setAttribute("test", postedBy);


            RequestDispatcher rd = request.getRequestDispatcher("PostJobs.jsp");
            rd.include(request, response);
            if (isPosted.equals("true")) {

                out.print("<p>successfully posted</p>");
            }

        } catch (Exception e) {
            System.out.println("Postjob" + e);

        }


    }


}
