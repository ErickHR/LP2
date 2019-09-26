package modelo.bean;

public class Usuario {
    private int idusuario;
    private String usuario;
    private String pasword;
    private String etado;
    private int codal;
    //metodod e acceso

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPasword() {
        return pasword;
    }

    public void setPasword(String pasword) {
        this.pasword = pasword;
    }

    public String getEtado() {
        return etado;
    }

    public void setEtado(String etado) {
        this.etado = etado;
    }

    public int getCodal() {
        return codal;
    }

    public void setCodal(int codal) {
        this.codal = codal;
    }
    
    
    

}
