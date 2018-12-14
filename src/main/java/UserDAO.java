import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDAO {/**user database access object*/
    /**
     * userLogin method is responsible to return isCanLog --look at User class variables--
     * that in case isCanLog was true it will redirect the user to profile page
     */


    public static boolean userLogin(String email, String password, String role, User user) {

        Connection con = ConnectionManger.getConnection();
        String employerSqlLogin = "select USERNAME,USEREMAIL,USERPASS,USERTYPE from USER where USEREMAIL= ? and USERPASS= ?";
        try {
            PreparedStatement p = con.prepareStatement(employerSqlLogin);
            p.setString(1, email);
            p.setString(2, password);
            ResultSet rs1 = p.executeQuery();

            if (rs1.next()) {
                /**valid user*/
                user.setCanLog(true);
                String name = rs1.getString("USERNAME");
                String type = rs1.getString("USERTYPE");
                user.setName(name);
                user.setRole(type);

                return user.isCanLog();

            } else {
                /**Invalid user name or password */
                user.setCanLog(false);
                return user.isCanLog();


            }

        } catch (Exception e) {

        }
        return user.isCanLog();
    }


}
