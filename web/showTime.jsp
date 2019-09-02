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
    <script>
        function show1() {
            //使用AJAX发送一个请求，获得服务器端的系统的时间,将时间放在输入框中
            //1.创建XMLHttpRequest对象
            var xhr = new XMLHttpRequest();
            //2.注册onreadystatechange事件
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4){
                    // alert(xhr.responseText);
                    //将时间放在输入框中
                    var a = document.getElementsByName("time")[0];
                    a.value=xhr.responseText;
                }
            }
            //4.发送请求
            xhr.open("GET","/ajax_json/showTimeServlet",true);
            xhr.send(null);
        }
    </script>
</head>
<body>
用户:<input type="text" name="username" onkeyup="show1()">&nbsp;&nbsp;&nbsp; 时间:<input type="text" name="time">
</body>
</html>
