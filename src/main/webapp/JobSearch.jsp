<%--
  Created by IntelliJ IDEA.
  User: alous
  Date: 12/22/2018
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
     </head>
<body>
<form method="get" action="JobSearch">
    <fieldset>
        <label>Job category:
<select name="JOBCATEGORY">
    <option value="IT" >IT</option>
    <option value="Marketing" >Marketing</option>
    <option value="Writing" >Writing </option>
    <option value="Translation" >Translation </option>

</select>
        </label><br>
        <input type="submit" value="search" />
    </fieldset>
</form>


<table border="2" id="table">
    <tr>
        <th>Job ID </th>
        <th>job name</th>
        <th>category</th>
        <th>posted date</th>
        <th> view </th>

    </tr>
<%  try
{
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://usersdatabase1.mysql.database.azure.com:3306/userdatabase1?useSSL=true&requireSSL=false";
    String username="heshmat@usersdatabase1";
    String password="Website1";
    String jc= request.getParameter("JOBCATEGORY");
    String query="select * from JOB where JOBCATEGORY='"+jc+"'";
    Connection conn=DriverManager.getConnection(url, username, password);
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery(query);

    while(rs.next()) {
%>

<tr>
    <td><%=rs.getInt("JOBID") %></td>
    <td><%=rs.getString("JOBNAME") %>  </td>
    <td><%=rs.getString("JOBCATEGORY") %></td>
    <td><%=rs.getString("POSTDATE") %></td>
    <td><form method="post" action="ViewJob"> <button name="submit1" type="submit" value="<%=rs.getInt("JOBID") %>">Show</button></form></td>
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
