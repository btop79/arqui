
package Modelo;

public class Empleado {
    int id;
    String nombre;
    String usuario;
    String pass;
    String correo;

    public Empleado() {
    }

    public Empleado(int id, String nombre, String usuario, String pass, String correo) {
        this.id = id;
        this.nombre = nombre;
        this.usuario = usuario;
        this.pass = pass;
        this.correo = correo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
    
}
