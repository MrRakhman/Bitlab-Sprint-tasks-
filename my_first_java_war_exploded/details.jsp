<%@ page import="kz.bitlab.techOrda.db.Task" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
    <div class="container mt-5 pb-5">
        <%
            Task task = (Task) request.getAttribute("zadacha");
            if (task != null){
        %>
        <div class="row">
            <div class="col-6 mx-auto">
                <div class="row">
                    <div class="col-12">
                        <label>NAME : </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" readonly value="<%=task.getName()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>DEADLINE : </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" readonly value="<%=task.getDeadline()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>STATUS : </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" readonly value="<%=task.getStatus()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>DESCRIPTION : </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" readonly value="<%=task.getDescription()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button type="button"
                                class="btn btn-primary btn-sm"
                                data-bs-toggle="modal"
                                data-bs-target="#editTask">
                            Edit Task
                        </button>
                        <button type="button"
                                class="btn btn-danger btn-sm ms-2"
                         ,       data-bs-toggle="modal"
                                data-bs-target="#deleteTask">
                            Delete Task
                        </button>
                    </div>
                </div>
                <div class="modal fade"
                     id="deleteTask"
                     data-bs-backdrop="static"
                     data-bs-keyboard="false"
                     tabindex="-1"
                     aria-labelledby="staticBackdropLabel"
                     aria-hidden="true">
                     <div class="modal-dialog">
                         <div class="modal-content">
                             <form action="/delete-task" method="get">
                                 <input type="hidden" name="id" value="<%=task.getId()%>">
                                 <div class="modal-header">
                                     <h1 class="modal-title fs-5">Confirm Delete</h1>
                                     <button type="button" class="btn-close"
                                             data-bs-dismiss="modal"
                                             aria-label="close">
                                     </button>
                                 </div>
                                 <div class="modal-body">
                                     <h5 class="text-center">Are you sure?</h5>
                                 </div>
                                 <div class="modal-footer">
                                     <button type="button" btn="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                     <button class="btn btn-danger">YES</button>
                                 </div>
                             </form>
                         </div>
                     </div>
                </div>
                <div class="modal fade"
                     id="editTask"
                     data-bs-backdrop="static"
                     data-bs-keyboard="false"
                     tabindex="-1"
                     aria-labelledby="staticBackdropLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                                <button type="button" class="btn-close"
                                        data-bs-dismiss="modal"
                                        aria-label="Close">
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="/save-task" method="get">
                                    <input type="hidden" name="task_id" value="<%=task.getId()%>">
                                    <div class="row">
                                        <div class="col-12">
                                            <label>NAME : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="task_name"
                                                   value="<%=task.getName()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>DEADLINE : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="task_deadline"
                                                   value="<%=task.getDeadline()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>STATUS : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="task_status"
                                                   value="<%=task.getStatus()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>DESCRIPTION : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="task_description"
                                                   value="<%=task.getDescription()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <button class="btn btn-primary">SAVE TASK</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            }else{
        %>
        <h3 class="text-center">TASK NOT FOUND</h3>
        <%
            }
        %>
    </div>
</body>
</html>