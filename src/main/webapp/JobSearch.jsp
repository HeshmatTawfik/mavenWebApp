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
    /* Dropdown Button */
    .dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    }

    /* Dropdown button on hover & focus */
    .dropbtn:hover, .dropbtn:focus {
    background-color: #3e8e41;
    }

    /* The search field */
    #myInput {
    border-box: box-sizing;

    background-position: 14px 12px;
    background-repeat: no-repeat;
    font-size: 16px;
    padding: 14px 20px 12px 45px;
    border: none;
    border-bottom: 1px solid #ddd;
    }

    /* The search field when it gets focus/clicked on */
    #myInput:focus {outline: 3px solid #ddd;}

    /* The container <div> - needed to position the dropdown content */
    .dropdown {
    position: relative;
    display: inline-block;
    }

    /* Dropdown Content (Hidden by Default) */
    .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f6f6f6;
    min-width: 230px;
    border: 1px solid #ddd;
    z-index: 1;
    }

    /* Links inside the dropdown */
    .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    }

    /* Change color of dropdown links on hover */
    .dropdown-content a:hover {background-color: #f1f1f1}

    /* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
    .show {display:block;}
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

<script>function myFunction() {
document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
var input, filter, ul, li, a, i;
input = document.getElementById("myInput");
filter = input.value.toUpperCase();
div = document.getElementById("myDropdown");
a = div.getElementsByTagName("a");
for (i = 0; i < a.length; i++) {
txtValue = a[i].textContent || a[i].innerText;
if (txtValue.toUpperCase().indexOf(filter) > -1) {
a[i].style.display = "";
} else {
a[i].style.display = "none";
}
}
}
</script>
<table border="2">
    <tr>
        <th>Job ID</th>
        <th>job name</th>
        <th>category</th>
        <th>posted date</th>

    </tr>
<%  try
{
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://usersdatabase1.mysql.database.azure.com:3306/userdatabase1?useSSL=true&requireSSL=false";
    String username="heshmat@usersdatabase1";
    String password="Website1";
    String jc= request.getParameter("JOBCATEGORY");
    String query="select * from JOB where JOBCATEGORY="+jc;
    Connection conn=DriverManager.getConnection(url, username, password);
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery(query);

    while(rs.next()) {
%>

<tr>

    <td><%=rs.getInt("JOBID") %></td>
    <td><%=rs.getString("JOBNAME") %></td>
    <td><%=rs.getString("JOBCATEGORY") %></td>
    <td><%=rs.getString("POSTDATE") %></td>
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
