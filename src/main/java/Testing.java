import javax.annotation.Resource;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.ws.RequestWrapper;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Testing")
@ManagedBean(name="beann")
@SessionScoped
public class Testing extends HttpServlet implements Serializable {
   // @Resource(name="jdbc/userdatabase1")
   @Resource(name="jdbc/userdatabase1") // For Tomcat, define as <Resource> in context.xml and declare as <resource-ref> in web.xml.
    private DataSource dataSource;
    private JobDAO jobDAO;

    @Override
    public void init() throws ServletException {
         jobDAO=new JobDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        JobDAO jobDAOs=new JobDAO();

        List<Job> jobs=jobDAOs.list(23);

       String s= "helllllllll";
        out.println("<p>heeeeee</p>");

        out.println("<p>"+s+"</p>");

        request.setAttribute("s", s); // Will be available as ${jobs} in JSP

        request.setAttribute("jobs", jobs); // Will be available as ${jobs} in JSP
        response.sendRedirect("TT.xhtml");

     //  request.getRequestDispatcher("JobTest.jsp").forward(request, response);




    }
}
