<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function tt() {
            //使用XMLHttpRequest发送请求
            //1.创建XMLHttpRequest对象
            var xhr = new XMLHttpRequest();
            //2.注册onreadystatechange事件
            xhr.onreadystatechange = function () {
                //readyStare=4说明 请求相应处理结束
                if (xhr.readyState == 4){
                    // alert(xhr.status);
                    alert(xhr.responseText);
                }

            };
            //3.准备带给服务器端的数据
            //4.发送请求
            xhr.open("GET","/ajax_json/ajax1Servlet?id=100",true);
            xhr.send(null);
        }

    </script>
</head>
<body>
<input type="button" value="test" onclick="tt()">
</body>
</html>
