<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="text-center mt-3">
        <h1>Hello <%= session.getAttribute("fullName")%>!</h1>
    </div>
</body>
</html>
