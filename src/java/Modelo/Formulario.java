
package Modelo;


public class Formulario {
    int idFor;
    String nombreComercio;
    String servicio;
    String giro;
    String correoComercio;
    String nombreAfiliado;
    String apellidoAfiliado;
    String correoAfiliado;
    String telAfiliado;
    String fechaNacimiento;
    String estado;

    public Formulario() {
    }

    public Formulario(int idFor, String nombreComercio, String servicio, String giro, String correoComercio, String nombreAfiliado, String apellidoAfiliado, String correoAfiliado, String telAfiliado, String fechaNacimiento, String estado) {
        this.idFor = idFor;
        this.nombreComercio = nombreComercio;
        this.servicio = servicio;
        this.giro = giro;
        this.correoComercio = correoComercio;
        this.nombreAfiliado = nombreAfiliado;
        this.apellidoAfiliado = apellidoAfiliado;
        this.correoAfiliado = correoAfiliado;
        this.telAfiliado = telAfiliado;
        this.fechaNacimiento = fechaNacimiento;
        this.estado=estado;
    }

    public int getIdFor() {
        return idFor;
    }

    public void setIdFor(int idFor) {
        this.idFor = idFor;
    }

    public String getNombreComercio() {
        return nombreComercio;
    }

    public void setNombreComercio(String nombreComercio) {
        this.nombreComercio = nombreComercio;
    }

    public String getServicio() {
        return servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public String getGiro() {
        return giro;
    }

    public void setGiro(String giro) {
        this.giro = giro;
    }

    public String getCorreoComercio() {
        return correoComercio;
    }

    public void setCorreoComercio(String correoComercio) {
        this.correoComercio = correoComercio;
    }

    public String getNombreAfiliado() {
        return nombreAfiliado;
    }

    public void setNombreAfiliado(String nombreAfiliado) {
        this.nombreAfiliado = nombreAfiliado;
    }

    public String getApellidoAfiliado() {
        return apellidoAfiliado;
    }

    public void setApellidoAfiliado(String apellidoAfiliado) {
        this.apellidoAfiliado = apellidoAfiliado;
    }

    public String getCorreoAfiliado() {
        return correoAfiliado;
    }

    public void setCorreoAfiliado(String correoAfiliado) {
        this.correoAfiliado = correoAfiliado;
    }

    public String getTelAfiliado() {
        return telAfiliado;
    }

    public void setTelAfiliado(String telAfiliado) {
        this.telAfiliado = telAfiliado;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
}
