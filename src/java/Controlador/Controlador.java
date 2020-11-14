
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


public class Controlador extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
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
        String accion=request.getParameter("accion");
        String aceptar = request.getParameter("acepto");
        
        if(accion.equalsIgnoreCase("Enviar Solicitud")){
                                    Formulario formulario= new Formulario();
                                    FormularioDAO formularioDAO = new FormularioDAO();
                
                                   String nombreComercio = request.getParameter("nombre");
                                   String servicio = request.getParameter("servicio");
                                   String giro = request.getParameter("giro");
                                   String correoComercio = request.getParameter("correoC");
                                   String nombreAfiliado= request.getParameter("nombreA");
                                   String apellido = request.getParameter("apellido");
                                   String correoAfiliado = request.getParameter("correoA");
                                   String tel = request.getParameter("tel");
                                   String fecha = request.getParameter("fecha");
                                           
                
                                    formulario.setNombreComercio(nombreComercio);
                                    formulario.setServicio(servicio);
                                    formulario.setGiro(giro);
                                    formulario.setCorreoComercio(correoComercio);
                                    formulario.setNombreAfiliado(nombreAfiliado);
                                    formulario.setApellidoAfiliado(apellido);
                                    formulario.setCorreoAfiliado(correoAfiliado);
                                    formulario.setTelAfiliado(tel);
                                    formulario.setFechaNacimiento(fecha);
                                    formulario.setEstado("En proceso de aprobación.");
                               
                            
                                if(formularioDAO.esEmail(correoComercio)&& formularioDAO.esEmail(correoAfiliado)){
                                 if(formularioDAO.registrar(formulario)){
                                                        
                        
                    JOptionPane.showMessageDialog(null, "Se guardaron correctamente los datos");
                    request.getRequestDispatcher("Formulario.jsp").forward(request, response);
                                    }else{
                        JOptionPane.showMessageDialog(null, "No se ha registrado");
                        request.getRequestDispatcher("Formulario.jsp").forward(request, response);
                                    }
                            } else{
                    JOptionPane.showMessageDialog(null, "El correo es invalido");
                        request.getRequestDispatcher("Formulario.jsp").forward(request, response);
                            }
                
                
                
                        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
