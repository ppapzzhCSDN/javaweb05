package com.servlet;

import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/**
 * @author zzh
 * @description
 * @date
 */
@WebServlet("/login")
public class HelloServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user=new User(001,"张小斐",20,"女","1998-10-22 20:20:59");
        User user2=new User(002,"李思思",35,"女","1997-6-22 20:20:59");

        ArrayList<User> list = new ArrayList<>();
        list.add(user);
        list.add(user2);

        HashMap<String, User> map = new HashMap<>();
        map.put("map1",user);
        map.put("map2",user2);
        Date date = new Date();

        req.setAttribute("user",list);//传值的时候list  与"user" 写法注意 传值
        req.setAttribute("map",map);
        req.setAttribute("ppap",date);
        req.setAttribute("pppp","1999-11-22");
        req.getRequestDispatcher("/sucess2.jsp").forward(req,resp);



    }
}
