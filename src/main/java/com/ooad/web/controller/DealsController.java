package com.ooad.web.controller;

import com.ooad.web.model.Item;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "DealsController")
public class DealsController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Item> i = Item.getAllDealItems();
        request.setAttribute("items",i);
        System.out.println(i);
        RequestDispatcher rd = request.getRequestDispatcher("/jsp/deals.jsp");
        rd.forward(request, response);
    }
}
