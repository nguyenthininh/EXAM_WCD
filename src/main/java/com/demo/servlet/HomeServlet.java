package com.demo.servlet;

import com.demo.entity.PhoneEntity;
import com.demo.ninh.dao.PhoneDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet" , urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {
    PhoneDao phone = new PhoneDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PhoneEntity> data = phone.getAll();
        request.setAttribute("listPhone", data);
        request.getRequestDispatcher("listphone.jsp").forward(request, response);
    }


}
