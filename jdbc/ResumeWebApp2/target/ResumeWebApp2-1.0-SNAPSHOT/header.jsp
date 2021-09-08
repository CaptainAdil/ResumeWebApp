<%@ page import="com.company.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 01.08.2021
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User)session.getAttribute("LoggedInUser");
%>

<%="Welcome, "+user.getName()+"!!!"%>
