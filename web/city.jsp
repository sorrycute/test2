<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/30
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $(function () {
            $("select[name=province]").change(function () {
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/cityServlet",
                    data:"id="+this.selectedIndex,
                    dataType:"json",
                    success:function (response) {
                        //省份对应的城市的数组
                        $("select[name=city] option").remove();
                        $.each(response,function (index,name) {
                            $("select[name=city]").append("<option>"+name+"</option>")
                        });
                    }
                });
            });
        });
    </script>
</head>
<body>
省:<select name = "province" >
    <option>江苏</option>
    <option>上海</option>
    <option>浙江</option>
    <option>山东</option>
    <option>山西</option>
</select>
市：<select name="city">
    <option>南京</option>
    <option>苏州</option>
    <option>无锡</option>
    <option>南通</option>
    <option>盐城</option>
</select>
</body>
</html>
