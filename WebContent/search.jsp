<%@ include file="menu.jsp"%>
<html>
  <head>
    <link href='CSS/style.css' rel='stylrsheet'>
  </head>
 <body>
  <form action="search-record.jsp" method="post">
   <table class='ta'>
    <tr>
     <td class='pa'>Enter product id</td>
     <td class='pa'><input type='text' name='pid' class='tb' required></td>
    </tr> 
    <tr>
     <td class='pa' colspan="2" align="right">
      <button class='bt'>Submint</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>