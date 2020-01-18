package com.sda.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet(name = "HelloWorldServlet", urlPatterns = {"/"})
public class HelloWorldServlet extends HttpServlet {
    private String varUserId, varLocalization;

    @Override
    public void init(ServletConfig config){
        varUserId = config.getInitParameter("userId");
        varLocalization = config.getInitParameter("localization");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer = response.getWriter();
        writer.println("UserId : " + varUserId);
        writer.println("Localization : " + varLocalization);
    }

}
