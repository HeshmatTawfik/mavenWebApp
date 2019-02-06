<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: heshmat
  Date: 1/18/2019
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="TablesFormat.css">

    <title>Title</title>

</head>
<body>


<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://usersdatabase1.mysql.database.azure.com:3306/userdatabase1?useSSL=true&requireSSL=false";
        String username = "heshmat@usersdatabase1";
        String password = "Website1";
        String zz = (String) session.getAttribute("applicantID");
        String query = "SELECT * FROM user WHERE USERID in (SELECT APPLICANTID FROM application WHERE JOBID='" + zz + "')";
        Connection conn = DriverManager.getConnection(url, username, password);
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);
%>

    <table border="2">
    <tr>
        <th>name</th>
        <th>email</th>
        <th>age</th>
        <th>city</th>


    </tr>

    <% while (rs.next()) {

    %>

    <tr>


        <td><%=rs.getString("USERNAME") %>
        </td>
        <td><%=rs.getString("USEREMAIL")%>
        </td>
        <td><%=rs.getString("USERAGE")%>
        </td>
        <td><%=rs.getString("USERCITY")%>
        </td>
    </tr>
<%}%>
</table>

<%

        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>