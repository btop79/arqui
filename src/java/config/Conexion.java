
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    Connection con;
    
    public Connection conexion(){
        try{
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://br2ckileguu3j289ceqd-postgresql.services.clever-cloud.com:5432/br2ckileguu3j289ceqd", 
                    "uz12ygmfpezutoigizzh", "UiMW2WrP7I0D0TQRPD3I");
            
            } catch(ClassNotFoundException | SQLException ex){
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
     /*Connection con;
    //Metodo para conectar el proyecto a la base de datos.
    public Conexion(){
        try{
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proyectoarqui",
                    "postgres","top1234");
        }catch(Exception e){
            System.err.println("Error" +e);
        }
    
    }
     public static void main(String[] args) {
        Conexion cn=new Conexion();
      Statement st;
        ResultSet rs;
       try {
           st=cn.con.createStatement();
           rs=st.executeQuery("select * from usuario");
        while (rs.next()){
                System.out.println(rs.getInt("idusuario")+" " +rs.getString("nombre") +" "+rs.getString("correo")
                        +" "+rs.getString("usuario")+" "+rs.getString("contraseña"));
             }
            cn.con.close();
        } catch (Exception e) {
        }
       
    }*/
}
