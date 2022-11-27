<%@ page import="java.sql.*" %>
<%@ include file="menu.jsp" %>
<html>
 <body>
  <%
  try
  {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/crud","root","12345");
	String query="update productinfo set name=?,brand=?,price=? where pid=?";
	PreparedStatement ps=cn.prepareStatement(query);
	ps.setString(4,request.getParameter("pid"));
	ps.setString(1,request.getParameter("name"));
	ps.setString(2,request.getParameter("brand"));
	ps.setString(3,request.getParameter("price"));
	ps.executeUpdate();
  }
  catch(Exception ex)
  {
	  out.println(ex);
  }
  %>
  <div class='dv'>
   <h2>Product record has been updated successfully</h2>
  </div>
 </body>
</html>