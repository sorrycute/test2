<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function () {
           // alert("ok");
            $(":button").click(function () {
               // alert("ok");
                $.ajax({
                    type:"GET",
                    url:"/ajax_json/ajax1Servlet?id=1001",
                    success:function (response) {
                        alert(response);
                    }
                });
            });
        });
    </script>
</head>
<body>
<input type="button" value="测试">
</body>
</html>
