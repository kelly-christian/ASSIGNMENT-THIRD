<%-- 
    Document   : ViewUsers
    Created on : Mar 9, 2024, 5:18:17 PM
    Author     : Kelly
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="bean.Users"%>
<%@page import="dao.UsersDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="UsersForm.html">add users</a>
        <% 
           
           List<Users> userslist=UsersDao.Userslist();
           request.setAttribute("userslist",userslist);
           

        %>
        <table border="1" width="90%">
            <tr><th>ID</th> <th>NAMES</th> <th>PASSWORD</th> <th>EMAIL</th> <th>SEX</th> <th>COUNTRY</th>
            <th>EDIT</th> <th>DELETE</th></tr>
            <c:forEach items="${userslist}" var="u">
            <tr><td>${u.getId()}</td> <td>${u.getNames()} </td> <td>${u.getPassword()}</td> <td>${u.getEmail()}</td>
                <td>${u.getSex()}</td><td>${u.getCountry()}</td> <td><a href="EditForm.jsp">EDIT</a></td>
                <td><a href="DeleteForm.jsp">DELETE</a></tr>
            </c:forEach>
        </table>
    </body>
</html>
