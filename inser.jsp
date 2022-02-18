<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
           
Class.forName("com.mysql.jdbc.Driver");
    
Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/visitdetail","root","raj");
 
PreparedStatement st = con.prepareStatement("insert into del values(?,?,?,?,?);");
 
st.setString(1, String.valueOf(request.getParameter("name")));
        
st.setInt(2, Integer.valueOf(request.getParameter("num")));
          
st.setString(3, String.valueOf(request.getParameter("con")));
  
st.setString(4, String.valueOf(request.getParameter("pur")));
       
st.setString(5, String.valueOf(request.getParameter("com")));
  
st.executeUpdate();
        
st.close();

con.close();

response.sendRedirect("./vie.jsp");
     
   }
 catch (Exception e) 
{

e.printStackTrace();

}
%>

<!DOCTYPE html>

<html>
 
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
 </head>
  
<body bgcolor = pink>
        
   
</body>

</html>
