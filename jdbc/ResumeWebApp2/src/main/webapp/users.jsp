<%--
    Document   : user
    Created on : 4 июн. 2021 г., 15:16:14
    Author     : Adil Nabiyev
--%>

<%@page import="com.company.entity.User"%>
<%@page import="com.company.main.Context"%>
<%@page import="com.company.dao.inter.UserDaoInter"%>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/assets/css/users.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <script type="text/javascript" src="assets/js/users.js"></script>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>JSP Page</title>

    </head>
    <body>

    <jsp:include page="header.jsp"/>

        <%
            UserDaoInter userDao = Context.instanceUserDao();

            String name = request.getParameter("name");
            String surname = request.getParameter("surname");

            String nationalityIdStr = request.getParameter("nid");
            Integer nationalityId = null;
            if(nationalityIdStr!=null&& !nationalityIdStr.trim().isEmpty()) {
                nationalityId = Integer.parseInt(nationalityIdStr);
            }
            List<User> list = userDao.getAll(name,surname,nationalityId);


        %>

        <div class="container mycontainer">
                <div class="row">
                    <div class="col-4">
                        <form action="users.jsp" method="GET">
                            <div class="form-group">
                                <input type="hidden" name="id" value=""/>
                                <label for="name">name:</label>
                                <input  onkeyup="writeWhatIamTyping()"
                                        placeholder="Enter name" class="form-control" type="text" name="name" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="surname">surname:</label>
                                <input placeholder="Enter surname" class="form-control" type="text" name="surname" value="" >
                            </div>

                            <input class="btn btn-primary" type="submit" name="search" value="Search" id="btnsearch"/>

                        </form>
                    </div>
                </div>
                <div>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>name</th>
                            <th>surname</th>
                            <th>nationality</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            for (User u : list) {
                        %>
                        <tr>
                            <td><%=u.getName()%></td>
                            <td><%=u.getSurname()%></td>
                            <td><%=u.getNationality().getName() == null ? "N/A" : u.getNationality().getName()%></td>
                            <td>
                                    <input type="hidden" name="id" value="<%=u.getId()%>"/>
                                    <input type="hidden" name="action" value="delete"/>
                                    <buttton data-toggle="modal" data-target="#exampleModal"
                                             class="btn btn-danger" type="submit" value="delete"
                                    onclick="setIdForDelete(<%=u.getId()%>)"/>
                                         <i class="fas fa-trash-alt"></i>
                                    </buttton>
                                <form action="userdetail" method="GET">
                                    <input type="hidden" name="id" value="<%=u.getId()%>"/>
                                    <input type="hidden" name="action" value="update"/>
                                    <button class="btn btn-primary" type="submit" value="update">
                                        <i class="fas fa-pen-square"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>

        </div>

        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Are you sure?
                    </div>
                    <div class="modal-footer">
                        <form action="userdetail" method="POST">
                            <input type="hidden" name="id" value="" id="idForDelete" />
                            <input type="hidden" name="action" value="delete"/>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-danger" value="Delete"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>
