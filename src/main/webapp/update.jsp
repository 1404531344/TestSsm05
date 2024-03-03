<%--
  Created by IntelliJ IDEA.
  User: fz
  Date: 2024/2/28
  Time: 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
<%--修改表单提交--%>
<form action="updateUser?id=51" method="post">
    姓名：<input type="text" name="name"><br>
    密码：<input type="password" name="password"><br>
    年龄：<input type="text" name="age"><br>
    <input type="submit" value="提交">
</form>



</body>
</html>
