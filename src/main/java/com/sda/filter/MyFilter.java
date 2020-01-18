package com.sda.filter;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class MyFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        PrintWriter writer = servletResponse.getWriter();
        writer.write("<html><body><div style='text-align: center;'>");
        String login = servletRequest.getParameter("login");
        if (login != null && login.equals("admin")) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else{
            writer.println("<p style='color: red; font-size: larger;'>"
                    + " User name is invalid</p>");
        }
        writer.write("</div></body></html>");
        writer.close();
    }
}
