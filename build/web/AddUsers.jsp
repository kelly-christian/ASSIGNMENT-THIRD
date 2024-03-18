<%-- 
    Document   : AddUsers
    Created on : Mar 5, 2024, 1:46:52 AM
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
   
   Users users=new Users(ID, NAMES ,PASSWORD, EMAIL,SEX, COUNTRY);
   int i= UsersDao.createUsers(users);
   

if(i>0){
    response.sendRedirect("Addusers-success.jsp");
}
else{
    response.sendRedirect("Addusers-failed.jsp");
}
%>
