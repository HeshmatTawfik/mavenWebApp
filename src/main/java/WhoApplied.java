import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.annotation.XmlAttribute;
import java.io.EOFException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.google.gson.Gson;


@WebServlet("/WhoApplied")
public class WhoApplied extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  response.setContentType("application/json");
        response.setContentType("text/json");

        String a = request.getParameter("submit1");
        PrintWriter out = response.getWriter();
        //   out.print(a);
        Connection con = ConnectionManger.getConnection();
        HttpSession session = request.getSession();
        session.setAttribute("applicantID",a);

        String selectApplicant = "SELECT USERNAME FROM user WHERE USERID in (SELECT APPLICANTID FROM application WHERE JOBID=?)";
        try {
           response.sendRedirect("CV.jsp");
          //  RequestDispatcher rd = request.getRequestDispatcher("CV.jsp");
         //   rd.include(request, response);
          //  PreparedStatement p = con.prepareStatement(selectApplicant);
         //   p.setString(1, a);
            //ResultSet rs = p.executeQuery();
           // ArrayList<String> appName = new ArrayList<>();

        /*    while (rs.next()) {
                String h = rs.getString("USERNAME");
                appName.add(h);
           //     RequestDispatcher rss = request.getRequestDispatcher("CV.jsp");
              //  rss.include(request, response);
                out.print(rs.getString("USERNAME"));
                //      session.setAttribute("App",boo);


                //   out.println(rs.getString("USERNAME"));
            }*/
          //  request.setAttribute("appName",appName);
          //  response.sendRedirect("CV.jsp");

            //   RequestDispatcher rss = request.getRequestDispatcher("CV.jsp");
            // rss.forward(request, response);
            //     String []arr1= appName.toArray(new String[appName.size()]);
            // String aaa=new Gson().toJson(appName);


        } catch (Exception e) {

        }


    }


}
/**
 * <%
 * ArrayList<String> std =(ArrayList<String>)request.getAttribute("arr");
 * for (int i=0;i<std.size();i++){
 * <p>
 * %>
 * <p> <%std.get(i);%><p>
 * <%}%>
 *
 * <p><!--<p><%=session.getAttribute("json")%></p>!--></p>
 */