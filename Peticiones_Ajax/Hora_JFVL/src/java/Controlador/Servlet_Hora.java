/* Autor: Julian Felipe Velasco Lopez */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Servlet_Hora extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* Imprime tu página aquí. Puede usar el siguiente código de muestra. */
            int Hora = Integer.parseInt(request.getParameter("H"));
            int Minutos = Integer.parseInt(request.getParameter("M"));
            int Segundos = Integer.parseInt(request.getParameter("S"));

            
            if(request.getParameter("Operacion").equals("Comprobar")){
               if((Hora <=24) && (Minutos <=60) && (Segundos <= 60)){   
               out.print("<center><h1>"+Hora+"Horas"+Minutos+"Minutos"+Segundos+"Segundos</h1></center>");
               
              }else{
               out.print("<center><h1>"+"La Hora que ingresaste es invalida!"+"</h1></center>");
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
