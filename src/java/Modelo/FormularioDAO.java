
package Modelo;

import config.Conexion;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class FormularioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public boolean registrar (Formulario formulario){
    
        PreparedStatement ps= null;
        con = cn.conexion();
        
        String sql = "INSERT INTO formulario (nombrecomercio, servicio, giro, correocomercio, nombreafiliado, apellidoafiliador,"
                + "correoafiliado, tel, fechanacimiento, estado) VALUES(?,?,?,?,?,?,?,?,?,?)";
        try {
            ps=con.prepareStatement(sql);
            ps.setString(1, formulario.getNombreComercio());
            ps.setString(2, formulario.getServicio());
            ps.setString(3, formulario.getGiro());
            ps.setString(4, formulario.getCorreoComercio());
            ps.setString(5, formulario.getNombreAfiliado());
            ps.setString(6, formulario.getApellidoAfiliado());
            ps.setString(7, formulario.getCorreoAfiliado());
            ps.setString(8, formulario.getTelAfiliado());
            ps.setString(9, formulario.getFechaNacimiento());
            ps.setString(10, formulario.getEstado());
            ps.execute();
            return true;
        } catch (SQLException ex) {
            return false;        
        }   
    }
    
    public boolean esEmail(String correo) {
		
        // Patrón para validar el email
        Pattern pattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
		
        Matcher mather = pattern.matcher(correo);
		
        return mather.find();
		
        }
    
    public boolean modificar(Formulario formulario){
         
         try {

            con = cn.conexion();
            ps = con.prepareStatement("UPDATE formulario SET Estado=? WHERE idformulario=?");
            ps.setString(1, formulario.getEstado());
            ps.setInt(2, formulario.getIdFor());
            ps.executeUpdate();
            
             con.close();
            
            return true;

        } catch (HeadlessException | SQLException e) {
            System.err.println(e);
            return false;
        } 
}
    
}
