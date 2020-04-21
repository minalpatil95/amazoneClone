package com.ooad.web.controller;

import com.ooad.web.dao.ItemDao;
import com.ooad.web.model.Item;
import com.ooad.web.model.Seller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

@WebServlet(name = "Exam2Controller")
public class Exam2Controller extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*//int itemId = Integer.parseInt(request.getParameter("itemId"));
        int sellerId = Integer.parseInt(request.getParameter("sellerId"));
        //System.out.println(itemId);
        System.out.println(sellerId);
        //Item item = Item.find(itemId);
        Seller seller = Seller.find(sellerId);
        //System.out.println(item);
        System.out.println(seller);
        //request.setAttribute("item",item);
        request.setAttribute("seller",seller);
//        RequestDispatcher rd = request.getRequestDispatcher("exam2output.jsp");*/
        Collection<Seller> s = Seller.getAllSellers();
        Collection<Item> i = Item.getAllItems();;
        request.setAttribute("sellers",s);
        request.setAttribute("items",i);

        RequestDispatcher rd = request.getRequestDispatcher("exam2.jsp");
        rd.forward(request,response);
    }
}
