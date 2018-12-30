import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String loginEmail = request.getParameter("email");
        String logInpass = request.getParameter("pass");

        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
         User userLogin = new User(loginEmail, logInpass);

        if (UserDAO.userLogin(userLogin.getEmail(), userLogin.getPass(), userLogin.getRole(), userLogin)) {
            HttpSession session = request.getSession();
            int userId=userLogin.getId();
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            session.setAttribute("email", loginEmail);
            session.setAttribute("username", userLogin.getName());
            session.setAttribute("role",userLogin.getRole());
            session.setAttribute("userId",userLogin.getId());
            if (userLogin.getRole().equals("employer")) {
                response.sendRedirect("EmployerPage.jsp");
            } else if (userLogin.getRole().equals("applicant")) {
                response.sendRedirect("ApplicantPage.jsp");
            }

            session.setAttribute("userSession", "loggedin");

        } else {
            RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            out.println("<div align=\"left\">\n" + "<span style=\"width:50px;margin-top:70%;color:black;font-size:30px;font-weight:bold;\">username or password incorrect ! </span>" + "</div>");
            rs.include(request, response);
        }


    }



}
