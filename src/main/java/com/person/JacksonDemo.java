package com.person;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
public class JacksonDemo {
    public static void main(String[] args) throws IOException {
        ObjectMapper mapper = new ObjectMapper();

        //Java对象 ==>JSON
//        mapper.writeValueAsString(obj)
        //JSON ==>JAVA对象
//        mapper.readValue(str,Class)
        //Java数组<==>JSON
        String[] arr = {"AJAX","JSON","Vue"};
        String str = mapper.writeValueAsString(arr);
        System.out.println("str="+str);
        str = "[\"AJAX\",\"JSON\",\"Vue\",\"React\"]";
        //JSON==>Java数组
        String[] arr1 = mapper.readValue(str,String[].class);
        System.out.println(Arrays.toString(arr1));
        //Java对象<==>JSON
        User user = new User(1,"tom",20);
        //{"id":1,"name":"tom","age":20}
        str = mapper.writeValueAsString(user);
        System.out.println("str="+str);
        str = "{\"id\":2,\"name\":\"king\",\"age\":18}";
        User user2 = mapper.readValue(str,User.class);
        System.out.println(user2);
        //Java List<User><==>JSON
        List<User> users = new ArrayList<User>();
        users.add(new User(1,"tom",19));
        users.add(new User(2,"alice",20));
        users.add(new User(3,"jack",21));
        //[{"id":1,"name":"tom","age":20},{},{}]
        str = mapper.writeValueAsString(users);
        System.out.println("str = "+str);
        str = "[{\"id\":1,\"name\":\"tom1\",\"age\":19},{\"id\":2,\"name\":\"alice1\",\"age\":20},{\"id\":3,\"name\":\"jack1\",\"age\":21}]";
        List<User> users2= mapper.readValue(str,new TypeReference<List<User>>(){});
        System.out.println(users2);
    }
}
