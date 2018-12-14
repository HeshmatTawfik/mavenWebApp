<%--
  Created by IntelliJ IDEA.
  User: heshmat
  Date: 12/11/2018
  Time: 10:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>profile Page</title>
    <h1>Hello <%=  session.getAttribute("username")%></h1>
</head>
<body>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    response.setHeader("Progma","no-cache");
    response.setDateHeader("Expires",0);
    if(session.getAttribute("email")==null){
        response.sendRedirect("index.jsp");
    }

%>
<form action="Logout"><input type="submit" value="Logout"></form>
</body>
</html>