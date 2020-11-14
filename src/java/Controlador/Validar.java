
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class Validar extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Validar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar at " + request.getContextPath() + "</h1>");
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
        Empleado em = new Empleado();
        EmpleadoDAO emdao = new EmpleadoDAO();
        String accion = request.getParameter("accion");
        
        if(accion.equalsIgnoreCase("Ingresar")){
            
            String user = request.getParameter("txtuser");
            String pass = request.getParameter("txtpass");
            
            if(!user.equals("") && !pass.equals("")){
                em.setUsuario(user);
                em.setPass(pass);
                if(emdao.login(em)){
                    request.getRequestDispatcher("Solicitudes.jsp").forward(request, response);
                    
            
            
            
            }else{
                JOptionPane.showMessageDialog(null, "Datos incorrectos");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
            else{
                JOptionPane.showMessageDialog(null, "Debe ingresar sus datos");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
