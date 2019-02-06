<%--
  Created by IntelliJ IDEA.
  User: heshmat
  Date: 12/27/2018
  Time: 10:10 PM
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



    <table border="2">
        <tr>
            <th>Job ID</th>
            <th>job name</th>
            <th>category</th>
            <th>posted date</th>
            <th> view </th>

        </tr>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://usersdatabase1.mysql.database.azure.com:3306/userdatabase1?useSSL=true&requireSSL=false";
                String username="heshmat@usersdatabase1";
                String password="Website1";
                int t=(int)session.getAttribute("EMPLOYERID");
                String query="select * from JOB where POSTEDBY="+t;
                Connection conn=DriverManager.getConnection(url, username, password);
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);

                while(rs.next())
                {

        %>

        <tr>

            <td><%=rs.getInt("JOBID") %></td>
        <td><%=rs.getString("JOBNAME") %></td>
        <td><%=rs.getString("JOBCATEGORY") %></td>
        <td><%=rs.getString("POSTDATE") %></td>
           <td><form method="post" action="WhoApplied"> <button name="submit1" type="submit" value="<%=rs.getInt("JOBID") %>">Show</button></form></td>
        </tr>
        <%

            }
                  %>
    </table>
    <%
            rs.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    %>
</body>
</html>
