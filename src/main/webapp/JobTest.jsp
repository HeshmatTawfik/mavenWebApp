<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: heshmat
  Date: 1/18/2019
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Title</title>
</head>
<body>
<p><%=session.getAttribute("jobs")%></p>
<p><%=session.getAttribute("jobs")%></p>
<p><%=request.getParameterValues("jobs")%></p>


</body>
</html>
