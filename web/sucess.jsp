<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
java的写法 ：<br/>

<%=((List<User>)request.getAttribute("user")).get(0).getName()%><br/>

el 的写法:  <br/>
  ${user[0].id}
  ${user[0].name}
  ${user[0].age}
  ${user[0].sex}
<hr>
  ${user[1].id}
  ${user[1].name}
  ${user[1].age}
  ${user[1].sex}
  <hr>
map集合：<br>
  ${map.map1.id}
  ${map.map1.name}
<br>

  ${map.map2.id}
  ${map.map2.name}<br>




  </body>
</html>