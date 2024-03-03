<%--
  Created by IntelliJ IDEA.
  User: fz
  Date: 2024/2/28
  Time: 0:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加</title>
</head>
<body>


<%--表单提交--%>
<form action="addUser" method="post">
    姓名：<input type="text" name="name"><br>
    密码：<input type="password" name="password"><br>
    年龄：<input type="text" name="age"><br>
    <input type="submit" value="提交">
</form>


</body>
</html>
