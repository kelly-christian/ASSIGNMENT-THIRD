<%-- 
    Document   : EditForm
    Created on : Mar 10, 2024, 4:17:09 PM
    Author     : Kelly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Edit Form</h1>
        
        <form action="EditUsers.jsp">
            <label>Id</label> <input type="text" name="idTxt"/></br>
            <label>Names</label> <input type="text" name="namesTxt"/></br>
            <label>Password</label> <input type="password" name="passwordTxt"/></br>
            <label>Email</label> <input type="email" name="emailTxt"/></br>
            <label>Sex</label> <input type="radio" name="sex" value="male"/>male
                               <input type="radio" name="sex" value="female"/>female
            </br>
            <label>Country</label> <select name="country">
                               <option>india</option>
                               <option>pakistan</option>
                               <option>afghanistan</option>
                               <option>berma</option>
                               <option>other</option>
            </select></br>
             
            <input type="submit" value="update users"/></br> 
            
        </form>
    </body>
</html>
