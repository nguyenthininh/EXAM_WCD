package com.demo.servlet;

import com.demo.entity.PhoneEntity;
import com.demo.ninh.dao.PhoneDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddPhoneServlet" , urlPatterns = {"/addphone"})
public class AddPhoneServlet extends HttpServlet {
    PhoneDao phoneDao = new PhoneDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name_phone");
        String brand = request.getParameter("brand");
        String price = request.getParameter("price");
        String desc = request.getParameter("desc");
        PhoneEntity p = new PhoneEntity(name, brand,price,desc);
        phoneDao.insertPhone(p);
        request.getRequestDispatcher("listphone.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void insertPhone (PhoneEntity input){

    }
}
