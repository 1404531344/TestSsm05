<%--
  Created by IntelliJ IDEA.
  User: fz
  Date: 2024/3/3
  Time: 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<%--导入js--%>
<script type="text/javascript" src="js/jquery.min.js"></script>
<head>
    <title>测试</title>
</head>
<body>

<h1>模糊查询测试</h1>


<input id="findLike" placeholder="模糊查询"><button id="findLikeButton">搜索</button>





<script>


    $("#findLikeButton").click(function () {
        var nameVal = $("#findLike").val();
        $.ajax({
            url:"findLike",
            type:"get",
            data:{name:nameVal},
            success:function (data) {
                console.log(data);
            }
        })
    })


</script>

</body>
</html>
