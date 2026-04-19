package com.student.result;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        try {
            String roll = request.getParameter("rollno");
            String name = request.getParameter("studentname");
            int s1 = Integer.parseInt(request.getParameter("sub1"));
            int s2 = Integer.parseInt(request.getParameter("sub2"));
            int s3 = Integer.parseInt(request.getParameter("sub3"));
            int s4 = Integer.parseInt(request.getParameter("sub4"));
            int s5 = Integer.parseInt(request.getParameter("sub5"));

            // Server-side logic
            double average = (s1 + s2 + s3 + s4 + s5) / 5.0;
            String status = (s1 > 40 && s2 > 40 && s3 > 40 && s4 > 40 && s5 > 40) ? "PASS" : "FAIL";

            // Passing data to result.jsp
            request.setAttribute("roll", roll);
            request.setAttribute("name", name);
            request.setAttribute("avg", average);
            request.setAttribute("status", status);

            RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
            rd.forward(request, response);
            
        } catch (NumberFormatException e) {
            response.getWriter().println("Error: Please enter numeric values for marks.");
        }
    }
}
