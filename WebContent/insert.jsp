<%@ include file="menu.jsp" %>
<html>
  <head>
    <link href='CSS/style.css' rel='stylrsheet'>
  </head>
 <body>
  <form action="save-record.jsp" method="post">
   <table class='ta'>
    <tr>
     <td class='pa'>Enter product id</td>
     <td class='pa'><input type='text' name='t1' class='tb' required></td>
    </tr>    
    <tr>
     <td class='pa'>Enter product name</td>
     <td class='pa'><input type='text' name='t2' class='tb' required></td>
    </tr>
    <tr>
     <td class='pa'>Enter product Brand</td>
     <td class='pa'><input type='text' name='t3' class='tb' required></td>
    </tr>
    <tr>
    <tr>
     <td class='pa'>Enter product Price</td>
     <td class='pa'><input type='text' name='t4' class='tb' required></td>
    </tr>
    <tr>
     <td class='pa' colspan="2" align="right">
      <button class='bt'>Save Record</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>