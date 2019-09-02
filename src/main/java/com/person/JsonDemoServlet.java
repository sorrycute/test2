package com.person;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/jsonDemoServlet")
public class JsonDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        PrintWriter out = response.getWriter();
//        String[] arr = {"JSP","ASP","PHP"};
        //送给客户端的数据是JSON数组
//        out.print(mapper.writeValueAsString(arr));
//        User user = new User(1,"tom",20);
//        out.print(mapper.writeValueAsString(user));
        //List集合
        List<User> users = new ArrayList<User>();
        users.add(new User(1,"tom",19));
        users.add(new User(2,"alice",20));
        users.add(new User(3,"jack",21));
        out.print(mapper.writeValueAsString(users));
        out.close();
    }
}
