<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: alous
  Date: 1/12/2019
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>view job</title>
    <link rel="stylesheet" href="ViewJob.css">
</head>
<body>
<%  try
{   String jobId = request.getParameter("submit1");
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://usersdatabase1.mysql.database.azure.com:3306/userdatabase1?useSSL=true&requireSSL=false";
    String username="heshmat@usersdatabase1";
    String password="Website1";
    String query="select * from JOB where JOBID="+jobId;
    Connection conn= DriverManager.getConnection(url, username, password);
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery(query);

    while(rs.next()) {
%>
<div class="description">
    <br>job name: <%=rs.getString("JOBNAME")%>
    <br>job category:<%=rs.getString("JOBCATEGORY")%>
    <br>job description:<%=rs.getString("JOBDESCRIPTION")%>
    <br>date uploaded:<%=rs.getString("POSTDATE")%>
<form method="post" action="ApplyToJob"> <input type="submit" value="apply !" />

</form>
</div>
<%

    }
%>
</form>
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
