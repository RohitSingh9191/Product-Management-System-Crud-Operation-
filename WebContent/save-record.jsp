<%@ include file="menu.jsp"%>
<%@ page import="java.sql.*" %>

<html>
 <body>
  <%
  try{
	  
	    Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/crud","root","12345");
		String query="insert into productinfo values(?,?,?,?)";
		PreparedStatement ps=cn.prepareStatement(query);
		ps.setString(1,request.getParameter("t1"));
		ps.setString(2,request.getParameter("t2"));
		ps.setString(3,request.getParameter("t3"));
		ps.setString(4,request.getParameter("t4"));
		ps.executeUpdate();
	
	  
  }
  catch(Exception ex){
	  out.println(ex);
  }
  %>
  <div class='dv'>
  <h2>Record has been inserted succesfully</h2>
  </div>
 </body>
</html>