<%@ page import="java.util.ArrayList" %>
<%@ page import="techOrda.bitlab.kz.servlets.db.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container mt-4">
        <h1 class="text-center">Welcome to BITLAB SHOP</h1>
        <p class="text-center text-secondary">Electronic devices with high quality and service</p>
    </div>
    <main class="mt-4">
        <div class="container">
            <div class="row">
                <%
                    ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
                    for (Item item: items){%>
                    <div class="col-sm-4 mb-4">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="card-header"><%=item.getName()%></div>
                                <h5 class="card-title text-success"><%="$"+item.getPrice()%></h5>
                                <div class="card-description text-center mb-2" style="overflow-y: auto">
                                    <%
                                        String[] description = item.getDescription().split(",");
                                        for (String line: description){%>
                                            <div><h7><%=line%></h7></div>
                                    <%
                                        }
                                    %>
                                </div>
                                <a href="#" class="btn btn-success mt-2 w-100">BUY NOW</a>
                            </div>
                        </div>
                    </div>
                <%}%>
            </div>
        </div>
    </main>
</body>
</html>