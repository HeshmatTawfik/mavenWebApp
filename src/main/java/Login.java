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
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            session.setAttribute("email", loginEmail);
            session.setAttribute("username", userLogin.getName());
            if (userLogin.getRole().equals("employer")) {
                response.sendRedirect("EmployerPage.jsp");
            } else if (userLogin.getRole().equals("applicant")) {
                response.sendRedirect("ApplicantPage.jsp");
            }

            session.setAttribute("userSession", "loggedin");

        } else {
            RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            out.println("Username or Password incorrect");
            rs.include(request, response);
        }


    }


}
