
<%@ page import="java.sql.*" %>

<html>
 <body>
  <%
  String pid=request.getParameter("pid");
  try{
	  
	    Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/crud","root","12345");
		String query="select * from productinfo where pid=?";
		PreparedStatement ps=cn.prepareStatement(query);
		ps.setString(1, pid);
		ResultSet rst=ps.executeQuery();
		if(rst.next()){
		%>
		<%@ include file="menu.jsp" %>
		<table class='tar' border='1'>
		   <tr style='background-color:orange;font-size:24px;color:white'>
		    <th colspan=2 align="center">Product Details</th>
		   </tr>
			 <tr>
			  <th align="left">Product Id</th>
			   <td><%= rst.getString(1) %></td>
			 </tr>
			 <tr>
			  <th align="left">Product Name</th>
			  <td><%= rst.getString(2) %></td>
			 </tr>
			<tr>  
			  <th align="left">Product Brand</th>
			  <td><%= rst.getString(3) %></td>
			</tr> 
			<tr>
			  <th align="left">Product Price</th>
			  <td><%= rst.getString(4) %></td>
			 </tr>
		   </table>
		<%
			
		}
		else{
			%>
			<%@ include file="menu.jsp"%>
			   <div class='dv'>
			  <h2 style='color:red'> For pid <%=pid%> Record Dose not Found </h2>
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