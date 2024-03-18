<%-- 
    Document   : EditUsers
    Created on : Mar 10, 2024, 4:18:30 PM
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
   
   Users users=new Users(ID,NAMES, PASSWORD, EMAIL, SEX, COUNTRY);
    int i=UsersDao.updateUsers(users);
    
  if(i>0){
      response.sendRedirect("ViewUsers.jsp");
  }
%>