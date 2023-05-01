<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>

        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null){
        %>
        <div class="alert alert-danger" role="alert">
            <%= errorMessage%>
        </div>
        <%
            }
        %>
    <div class="container mt-4">
        <div class="card p-3">
            <div class="card-header">
                <h4>Login Page</h4>
            </div>
            <div class="card-body">
                <form method="post" action="/login" autocomplete="off">
                    <div class="mb-3 row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email"
                                   name = "email"
                                   class="form-control"
                                   id="inputEmail"
                                   value="">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                        <div class="col-sm-10">
                            <input type="password"
                                   name = "password"
                                   class="form-control"
                                   id="inputPassword"
                                   value = "">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success mt-2">Login</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>