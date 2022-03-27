/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ecommerce.servlets;

import com.ecommerce.dao.UserDao;
import com.ecommerce.entities.User;
import com.ecommerce.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rahul
 */
public class LoginServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String email=request.getParameter("email");
           String password=request.getParameter("password");
           
           
           UserDao userDao=new UserDao(FactoryProvider.getFactory());
           User user=userDao.getUserEmailPassword(email, password);
            //System.out.println(user);
            HttpSession httpSession  =request.getSession();
            if(user==null){
                
                //out.println("<h3>Invalid User</h3>");
                httpSession.setAttribute("message","Wrong Credentials Please check !!!");
                response.sendRedirect("login.jsp");
                return;
            }else{
                
                out.println("<h3>Welcome "+user.getUserName()+"</h3>");
                
                //login
                httpSession.setAttribute("current-user", user);
                if(user.getuserType().equals("admin")){
                    response.sendRedirect("admin.jsp");
                }
                else if(user.getuserType().equals("Normal")){
                    response.sendRedirect("normal.jsp");
                }
                else{
                    out.println("We hsve not identified User Type");
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
