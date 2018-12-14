import java.sql.*;
import java.util.*;

public class ConnectionManger {
    static Connection con;
    static String url;
    static String dpassword;
    static String driver;
    static String user;

    /**
     * thisclass is responsible to setup the Mysql database
     */
    public static Connection getConnection() {
       try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (ClassNotFoundException e)
        {
            System.out.println("MySQL JDBC driver NOT detected in library path."+ e);
        }
        try {
          /*  url = "jdbc:mysql://localhost:3306/website";
            driver = "com.mysql.jdbc.Driver";
            dpassword = "Website1";
            user = "root";*/
           // url = "jdbc:mysql://mavenwebapp1.mysql.database.azure.com";
            driver = "com.mysql.jdbc.Driver";
            dpassword = "Website1";
            user = "heshmat@usersdatabase1";

           url ="jdbc:mysql://usersdatabase1.mysql.database.azure.com:3306/userdatabase1?useSSL=true&requireSSL=false";
            //myDbConn = DriverManager.getConnection(url, "heshmat@usersdatabase1", {your_password});
            try {
                Class.forName(driver);

                con = DriverManager.getConnection(url, user, dpassword);
            } catch (SQLException ex) {

                ex.printStackTrace();
            }
        } catch (ClassNotFoundException e) {

        }

        return con;
    }

    public static void main(String[] args) {
        getConnection();
        String employerSqlLogin = "select USERNAME,USEREMAIL,USERPASS,USERTYPE from USER where USEREMAIL= ? and USERPASS= ?";
        try {
            Connection con = ConnectionManger.getConnection();

            PreparedStatement p = con.prepareStatement(employerSqlLogin);
            ResultSet rs1 = p.executeQuery();
            String name = rs1.getString("");
            System.out.println(name);


        }
catch (Exception e){

}

    }

}
/**

 *
 *  <dependency>
 *           <groupId>mysql</groupId>
 *           <artifactId>mysql-connector-java</artifactId>
 *           <version>5.1.6</version>
 *       </dependency>
 * **/
