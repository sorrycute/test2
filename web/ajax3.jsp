<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function () {
           $(":button").click(function () {
               //方法2:传js对象
               var user ={
                   "username":"alice",
                   "age":20
               };
               // alert($("form[name=myform]").serialize())
               $.ajax({
                   //post方法发送请求带数据给服务器端
                   //方法1:"名字1=值1&名字2=值2"
                   type:"POST",
                   url:"${pageContext.request.contextPath}/ajax3Servlet",
                   // data:"username=tom&age=20",
                   // data:user,
                   data:$("form[name=myform]").serialize(),
                   success:function (response) {
                       alert(response);
                   }
               });
           });
        });
    </script>
</head>
<body>
<form name="myform" method="post">
    用户名:<input type="text" name="username"><br/>
    年龄:<input type="text" name="age"><br/>
    <input type="button" value="测试">
</form>
</body>
</html>
