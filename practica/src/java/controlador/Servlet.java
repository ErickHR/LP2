/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alumno
 */
@WebServlet(name = "Servlet", urlPatterns = {"/Servlet", "/calculadora", "/cursos", "/foto", "/consulta" ,"/cons"})
public class Servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String pacth = request.getServletPath();
        String escuela= request.getParameter("escuela");
        String semestre= request.getParameter("semestre");
        String curso= request.getParameter("curso");
        
        if(pacth.equals("/calculadora")){
            
            request.getRequestDispatcher("WEB-INF/calculadora.jsp").forward(request, response);
            
        }
        
        if(pacth.equals("/cursos")){
            
            request.getRequestDispatcher("WEB-INF/listaDeCursos.jsp").forward(request, response);
            
        }
        
        if(pacth.equals("/foto")){
            
            request.getRequestDispatcher("WEB-INF/foto.jsp").forward(request, response);
        
        }
        
        if(pacth.equals("/consulta")){
            
            request.getRequestDispatcher("WEB-INF/consulta.jsp").forward(request, response);
        
        }
        if(pacth.equals("/cons")){
            request.setAttribute("escuela", escuela);
            request.setAttribute("semestre", semestre);
            request.setAttribute("curso", curso);
            request.getRequestDispatcher("WEB-INF/cons.jsp").forward(request, response);
        
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
