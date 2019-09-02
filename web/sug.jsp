<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 15:42
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
                   type:"POST",
                   url:"${pageContext.request.contextPath}/sugServlet",
                   data:"username="+$(this).val(),
                    success:function (response) {
                       var arr = response.split(",");
                       $("select option").remove();
                       $.each(arr,function (index,ele) {
                           $("select").append("<option>"+ele+"</option>")
                       });
                        // alert(response);
                    }
                });
            });
        });
    </script>
</head>
<body>
请输入:<input type="text" name="username">
<select>
    <option></option>
</select>
</body>
</html>
