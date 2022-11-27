<%@ page import="java.sql.*" %>
<html>
 <body>
  <%
  String pid=request.getParameter("pid");
  try
  {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/crud","root","12345");
	String query="select * from productinfo where pid=?";
	PreparedStatement ps=cn.prepareStatement(query);
	ps.setString(1,pid);
	ResultSet rst=ps.executeQuery();
	if(rst.next())
	{%>
		<%@ include file="menu.jsp" %>
		<form action='update-record.jsp' method='post'>
		<table class='tar' border='1'>
		 <tr style='background-color:orange;font-size:24px;color:white'>
		  <th colspan="2" align="center">Product Details</th>
		 </tr>
		 <tr>
		  	<th align="left">Product Id</th>
			<td><input type='text' readonly="readonly" value='<%=rst.getString(1)%>' name='pid' class='tb'></td>
		 </tr>
		 <tr>
			  <th align="left">Product name</th>
			<td><input type='text' value='<%=rst.getString(2)%>' name='name' class='tb'></td>
		 </tr>
		 <tr>
			  <th align="left">Product brand</th>
			  <td><input type='text' value='<%=rst.getString(3)%>' name='brand' class='tb'></td>
		 </tr>
		 <tr>
			  <th align="left">Product price</th>
			  <td><input type='text' value='<%=rst.getString(4)%>' name='price' class='tb'></td>
		 </tr>
		 <tr>
		  <td colspan="2" align="right">
		   <button class='bt'>Update Record</button>
		  </td>
		 </tr>
		</table>
		</form>
	<%}
	else
	{%>
	  <jsp:include page="edit.jsp" />
	  <div class='dv'>
		 <h2 style='color:red'>Product with id <%=pid%> does not exist</h2>
	  </div>
	<%}
  }
  catch(Exception ex)
  {
	  out.println(ex);
  }
  %>
 </body>
</html>