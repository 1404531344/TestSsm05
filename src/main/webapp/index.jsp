<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World ! index index </h2>
<%--导入css--%>
<link rel="stylesheet" href="css/index.css">

<%--查询框--%>
    <input type="text" id="search" placeholder="请输入用户名"><button id ="searchButton">搜索</button>
<%--表格 --%>
<table id="UserTable" width="1000">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>password</td>
        <td>age</td>
        <td>操作</td>
    </tr>
</table>


<a href="add.jsp">增加</a><br>

</body>
</html>

<%--导入js文件  --%>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
    //user数据
    let userData = {};
    //点击次数
    let clickCount = 0;
    //设置起始路径
    let myUrl = "UserFindAll";





    /*查询所有*/
    $(document).ready(function () {

        // 封装查询方法
        function getData(url) {
            $.ajax({
                url: url,
                type: "GET",
                success: function (data) {
                    // 清空表格数据
                    $('#UserTable').empty();
                    // 遍历数据，添加到表格中
                    $.each(data, function (index, user) {
                        $('#UserTable').append('<tr><td data-id="' + user.id + '">' + user.id + '</td><td data-name="' + user.name + '">' + user.name + '</td><td data-password="' + user.password + '">' + user.password + '</td><td data-age="' + user.age + '">' + user.age + '</td><td><a class="deleteButt" href="delUser?id=' + user.id + '">删除</a> <button class="updateButton">修改</button></td></tr>');
                    });
                }
            });
        }


        // 初始化页面数据
        getData(myUrl);

        /*查询按钮点击*/
        $("#searchButton").click(function () {
            var nameVal = $("#search").val();
            myUrl = "findLike?name="+nameVal;
            getData(myUrl);
            // alert(myUrl)

        });




        /*通过事件委托处理点击删除按钮事件*/
        $(document).on('click', '.deleteButt', function(event) {
            event.preventDefault();
            if (confirm("确定删除吗？")) {
                window.location = $(this).attr("href");
            }
        });



         /*点击修改按钮，根据id 先查询单个并将数据显示到alert 弹窗中*/
        $(document).on('click', '.updateButton', function () {

            // 点击修改按钮后设置删除超链接失效
            $(".deleteButt").click( function(event) {
                event.preventDefault(); // 阻止默认的链接跳转行为
                // 这里可以添加其他处理逻辑，比如显示错误信息或者执行其他操作
            }) ;


            //多次点及修改按钮后设置按钮失效，如果次数小于1便将数值存入userDate中
            clickCount ++;
            console.log(clickCount)
            if(clickCount>1){
                //设置修改 按钮失效
                $(".updateButton").prop("disabled",true);


            }else {
                // 从对应行的表格获取用户数据
                userData.id = $(this).closest('tr').find('[data-id]').data('id');
                userData.name = $(this).closest('tr').find('[data-name]').data('name');
                userData.password = $(this).closest('tr').find('[data-password]').data('password');
                userData.age = $(this).closest('tr').find('[data-age]').data('age');
                alert(userData.name);
            };


        });


    });


    //下拉框  alert  属性修改
    window.alert  =  alert;
    function  alert(e)  {
        //根据单个id  将userData对象传递进来，并且显示该对象数值
        $("body").append('<div  id="msg">'  +
            '<div  id="msg_top">修改<span  class="msg_close">×</span></div>'  +
            '<div  id="msg_cont">'+  e  +'</div>'  +
            '<form action="updateUser?id='+  userData.id  +'">'+
            '<div>'  +
            'id：<input  type="text"  name="id"  value="'+  userData.id  +'"><br>'  +
            '姓名：<input  type="text"  name="name"  value="'+  userData.name  +'"><br>'  +
            '密码：<input  type="text"  name="password"  value="'+  userData.password  +'"><br>'  +
            '年龄：<input  type="text"  name="age"  value="'+  userData.age  +'"><br>'  +
            '</div>'  +
            '<div    id="msg_clear">确定</div>'  +
            '</form>'  +
            '</div>');

        /*点击图标x时候关闭弹窗*/
        $(".msg_close").click(function  (){

            //  关闭alert弹窗后设置删除超链接生效
            $(".deleteButt").click(function(event)  {
                //  阻止默认的链接跳转行为
                event.preventDefault();

                //  确认用户是否要删除
                if  (confirm("确定删除吗？"))  {
                    //  确认删除后，执行删除操作
                    //  删除操作完成后，再执行超链接的跳转
                    window.location  =  $(this).attr("href");
                }
            });


            //  将修改按钮点击次数回正，并设置修改按钮生效
            clickCount  = 0 ;
            //设置修改按钮生效
            $(".updateButton").prop("disabled",false);


            //清除弹窗
            $("#msg").remove();
        });

            /*点击确认时清除提交请求并弹窗*/
            $("#msg_clear").click(function()  {
                //添加表单的submit事件，确保点击确定按钮时能提交表单数据
                $("form").submit();
                //清除弹窗
                $("#msg").remove();
            });

    }


</script>


</body>
</html>
