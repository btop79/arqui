
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class EmpleadoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public boolean login(Empleado em){

        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = cn.conexion();

        String sql = "select Usuario, Contraseña from usuario where Usuario=?";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getUsuario());
            rs = ps.executeQuery();
            if (rs.next()) {
                if (em.getPass().equals(rs.getString(2))) { 
                    return true;
                } else {
                    return false;
                }
            }
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
