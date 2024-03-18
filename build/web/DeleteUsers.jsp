<%-- 
    Document   : DeleteUsers
    Created on : Mar 10, 2024, 4:38:02 PM
    Author     : Kelly
--%>

<%@page import="dao.UsersDao"%>
<%@page import="bean.Users"%>
<%
   int ID=Integer.parseInt(request.getParameter("idTxt"));
   String NAMES=request.getParameter("namesTxt");
   String PASSWORD=request.getParameter("passwordTxt");
   String EMAIL=request.getParameter("emailTxt");
   String SEX=request.getParameter("sex");
   String COUNTRY=request.getParameter("country");
   
   Users users=new Users(ID);
   int i=UsersDao.deleteUsers(users);
   
    if(i>0){
        response.sendRedirect("ViewUsers.jsp");
    }
   
%>