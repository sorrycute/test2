<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function () {
           $(":input[name=username]").keyup(function () {
               $.ajax({
                  type:"GET",
                   url:"/ajax_json/showTimeServlet",
                   success:function (data) {
                       $(":input[name=time]").val(data);
                   }
               });
           });
        });
    </script>
</head>
<body>
用户:<input type="text" name="username" >&nbsp;&nbsp;&nbsp; 时间:<input type="text" name="time">
</body>
</html>
