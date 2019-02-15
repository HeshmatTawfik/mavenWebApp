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

@WebServlet("/ViewJob")
public class ViewJob extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         int userId=UserDAO.employerID.getId();
        String jobId = request.getParameter("submit1");
        HttpSession session=request.getSession();
        //         String name=request.getParameter("job name");


        session.setAttribute("JobId",jobId);

        try {

            RequestDispatcher rd = request.getRequestDispatcher("ViewJob.jsp");
            rd.include(request, response);



        }
catch (Exception e){

}

    }


}
