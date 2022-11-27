<%@ include file="menu.jsp" %>
<%@ page import="java.sql.*" %>

<html>
 <body>
  <%
  try{
	  
	    Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/crud","root","12345");
		String query="select * from productinfo";
		Statement st=cn.createStatement();
		ResultSet rst=st.executeQuery(query);
		if(rst.next()){
			%>
			<table class='tar' border='1'>
			 <tr>
			  <th align="left">Product Id</th>
			  <th align="left">Product Name</th>
			  <th align="left">Product Brand</th>
			  <th align="left">Product Price</th>
			 </tr>
			 <%
			 do{
			  %>
			   <tr>
			    <td><%=rst.getString(1)%></td>
			    <td><%=rst.getString(2)%></td>
			    <td><%=rst.getString(3)%></td>
			    <td><%=rst.getString(4)%></td>			  
			  <%
			 }while(rst.next());
			 %>
			</table>
			<%
		}
		else{
			%><div class='dv'>
			  <h2 style='color:red'>No Product Record In Database</h2>
			  </div>
			<%
		}
	
	  
  }
  catch(Exception ex){
	  out.println(ex);
  }
  %>