import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/Register")

public class Register extends HttpServlet {
    public boolean isUnique() {
        return unique;
    }

    public void setUnique(boolean unique) {
        this.unique = unique;
    }

    boolean  unique;


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username=request.getParameter("name");
        String pass=request.getParameter("pass");
        String email=request.getParameter("email");
        String age= request.getParameter("age");
        String city=request.getParameter("city");
        String role=request.getParameter("role");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String insert=" insert into user (USERNAME, USEREMAIL, USERPASS, USERAGE, USERCITY,USERTYPE)"
                + " values (?,?,?,?,?,?)";
        String select=" select USEREMAIL from user";

        try {
            if(username!=""&&email!=""&&pass!=""&&age!="" &&city!=""&&role!=null) {
                setUnique(true);
                Connection conn=ConnectionManger.getConnection();
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(select);
                while (rs.next()){
                    if(!unique){
                        break;
                    }
                    String mail=rs.getString("USEREMAIL");
                    if (mail.equals(email)){
                          RequestDispatcher rd = request.getRequestDispatcher("RegisteringForm.jsp");
                        rd.include(request, response);
                        out.println("<div align=\"center\">\n" + "<span style=\"width:50px;margin-top:20px;color:black;font-size:30px;font-weight:bold;\">email already registered !try another email ! </span>" + "</div>");
                        unique=false;

                        throw new SQLIntegrityConstraintViolationException(" email already used ! try another email ");

                    }

                }
                if (unique) {
                    PreparedStatement stmt = conn.prepareStatement(insert);
                    stmt.setString(1, username);
                    stmt.setString(2, email);
                    stmt.setString(3, pass);
                    stmt.setString(4, age);
                    stmt.setString(5, city);
                    stmt.setString(6, role);
                    stmt.execute();
                      RequestDispatcher rd = request.getRequestDispatcher("RegisteringForm.jsp");
                    rd.include(request, response);
                    out.println("<div align=\"center\">\n" + "<span style=\"width:50px;margin-top:20px;color:black;font-size:30px;font-weight:bold;\">Successfully Added A New User</span>" + "</div>");
                }


            }
            else {
                out.println("<div align=\"center\">\n" + "<span style=\"width:50px;margin-top:20px;color:black;font-size:30px;font-weight:bold;\">Please fill all fields !</span>" + "</div>");
                 RequestDispatcher rd = request.getRequestDispatcher("RegisteringForm.jsp");
                rd.include(request, response);
            }
        }
        catch (Exception e) {

            e.printStackTrace();
        }

    }
}
