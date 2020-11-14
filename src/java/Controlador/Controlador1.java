
package Controlador;

import Modelo.Formulario;
import Modelo.FormularioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class Controlador1 extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        Formulario formulario = new Formulario();
        FormularioDAO formularioDAO = new FormularioDAO();
        
        String nombreComercio = request.getParameter("nombre");
        
        if(accion.equalsIgnoreCase("Aceptada")){
                
                String id = request.getParameter("idfor");
                int idformulario = Integer.parseInt(id);
                String estado = "Solicitud aceptada";
                formulario.setIdFor(idformulario);
                formulario.setEstado(estado);
                
                                    if(formularioDAO.modificar(formulario)){
                    
                    JOptionPane.showMessageDialog(null, "Ahora "+nombreComercio+" es parte de la comunidad");
                    request.getRequestDispatcher("Solicitudes.jsp").forward(request, response);
                                    }else{
                        JOptionPane.showMessageDialog(null, "No se ha actualizado");
                                    }
            } else if(accion.equalsIgnoreCase("Rechazada")){
                String id = request.getParameter("idfor");
                int idformulario = Integer.parseInt(id);
                String estado="Solicitud rechazada";
                formulario.setIdFor(idformulario);
                formulario.setEstado(estado);
                
                if(formularioDAO.modificar(formulario)){
                    JOptionPane.showMessageDialog(null, "Ha rechazado la solicitud de "+nombreComercio+"");
                    request.getRequestDispatcher("Solicitudes.jsp").forward(request, response);
                                    }else{
                        JOptionPane.showMessageDialog(null, "No se ha actualizado");
                                    }
            }
                    
                
            }
        
    

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
