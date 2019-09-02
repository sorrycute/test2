package com.person;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/cityServlet")
public class CityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获得省份的id
        String id = request.getParameter("id");
        //获得省份对应的城市
        String[][] arr={{"南京","苏州","无锡","南通","盐城"},
                        {"宝山","徐汇","松江"},
                        {"杭江","宁波","温州","台州","湖州","绍兴"},
                        {"济南","青岛市","淄博市","东营"},
                        {"太原","大同","长治市","吴梁"}};
        //将这个数组==>Json字符串
        ObjectMapper mapper = new ObjectMapper();
        String str = mapper.writeValueAsString(arr[Integer.parseInt(id)]);
        PrintWriter out = response.getWriter();
        //将该字符串送给客户端
        out.print(str);
        out.close();

    }
}
