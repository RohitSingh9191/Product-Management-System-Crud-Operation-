
<%@ page import="java.sql.*" %>

<html>
 <body>
  <%
  String pid=request.getParameter("pid");
  try{
	  
	    Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/crud","root","12345");
		String query="delete from productinfo where pid=?";
		PreparedStatement ps=cn.prepareStatement(query);
		ps.setString(1, pid);
		int n=ps.executeUpdate();
		if(n>=1){
		%>
		<jsp:include page="delete.jsp"/>
		 <div class='dv'>
		  <h2 style='color:red'>Product with Id <%=pid %> has been deleted</h2>
		 </div>
		
		<%
			
		}
		else{
			%>
			   <jsp:include page="delete.jsp"/>
		 <div class='dv'>
		  <h2 style='color:red'>Product with Id <%=pid %> dose not exist</h2>
		 </div>
			<%
		}
	
	  
  }
  catch(Exception ex){
	  out.println(ex);
  }
  %>
  
 </body>
</html>