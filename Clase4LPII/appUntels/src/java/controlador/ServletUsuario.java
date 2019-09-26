package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.bean.Usuario;
import modelo.dao.AlumnoDAO;
import modelo.dao.UsuarioDAO;

@WebServlet(name = "ServletUsuario", urlPatterns = {"/ServletUsuario", "/validarUser","/cerrarsesion"})
public class ServletUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //captura valor urlPatterns del que s einvoca en la vista
        String path = request.getServletPath();

        if (path.equals("/validarUser")) {
            String usr = request.getParameter("txtus");
            String psw = request.getParameter("txtpas");
            //acceder al modelo para verificar existencia de usuario
            Usuario us = UsuarioDAO.validarUsuario(usr, psw);
            if (us != null) {
                
                //request.setAttribute("alumnox",AlumnoDAO.buscarID(us.getCodal()));
                //crear variable de sesion cuyo valor es el objeto alumnox
                request.getSession().setAttribute("alumnox", AlumnoDAO.buscarID(us.getCodal()));
                request.getRequestDispatcher("WEB-INF/principal.jsp").forward(request, response);
            } else {
                request.setAttribute("msg", "Usuario y/o password incorrecto...!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
        if(path.equals("/cerrarsesion")){
        request.getSession().invalidate();
        request.getRequestDispatcher("login.jsp").forward(request, response);
        
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
