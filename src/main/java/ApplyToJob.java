import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/ApplyToJob")
public class ApplyToJob extends HttpServlet{
Boolean unique;
    public Boolean getUnique() {
        return unique;
    }
    public void setUnique(Boolean unique) {
        this.unique = unique;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        int userId=UserDAO.employerID.getId();
        String jobId = session.getAttribute("JobId").toString();
        PrintWriter out = response.getWriter();
        String insert=" insert into application (JOBID, APPLICANTID)"
                + " values (?,?)";
        String select=" select APPLICANTID,JOBID from application";


        try {
            if(jobId!=null) {
                setUnique(true);
                Connection conn = ConnectionManger.getConnection();
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(select);
                while (rs.next()) {
                    if (!unique) {
                        break;
                    }
                    int x = rs.getInt("APPLICANTID");
                    int same=rs.getInt("JOBID");
                    if (x == userId&&Integer.parseInt(jobId)==same) {
                        RequestDispatcher rd = request.getRequestDispatcher("ViewJob.jsp");
                        rd.include(request, response);
                        out.println("<div align=\"center\">\n" + "<span style=\"width:50px;margin-top:20px;color:black;font-size:30px;font-weight:bold;\">error ! you already applied for this job ! </span>" + "</div>");
                        unique = false;
                        throw new SQLIntegrityConstraintViolationException(" user already applied ! try another job ");

                    }
                }
                    if (unique) {
                        PreparedStatement stmt = conn.prepareStatement(insert);
                        stmt.setString(1, jobId);
                        stmt.setInt(2, userId);
                        stmt.execute();
                        RequestDispatcher rd = request.getRequestDispatcher("ViewJob.jsp");
                        rd.include(request, response);
                        out.println("<div align=\"center\">\n" + "<span style=\"width:50px;margin-top:20px;color:black;font-size:30px;font-weight:bold;\">Successfully Applied For This Job</span>" + "</div>");
                    }

            }
        }
        catch (Exception e){
         e.printStackTrace();
        }

    }
    }

