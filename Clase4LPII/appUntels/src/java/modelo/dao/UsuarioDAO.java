package modelo.dao;

import conextion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Usuario;

public class UsuarioDAO {

    public static Usuario validarUsuario(String usr, String psw) {
        //varioable tipo usuario
        Usuario u = null;
        //sql para buscar usuario enla base de datos
        String sql = "select*from usuario where usuario=? and password=?";
        //conexion a la base de datos
        Connection cn = Conexion.abrir();
        try {
            //objeto para ejecutar sql
            PreparedStatement pst = cn.prepareStatement(sql);
            //asignar valor a los parametros  ?,?
            pst.setString(1, usr);
            pst.setString(2, psw);
            //ejecutar
            ResultSet rs = pst.executeQuery();
            //leer rs
            if (rs.next()) {
                //instancia de usuario
                u = new Usuario();
                //aignar valor a sus propiedades del objeto:
                //encapsulamiento de datos
                u.setIdusuario(rs.getInt("idusuario"));
                u.setUsuario(rs.getString("usuario"));
                u.setPasword(rs.getString("password"));
                u.setEtado(rs.getString("estado"));
                u.setCodal(rs.getInt("codal"));
            }
            //cerrar objetos
            cn.close();
            pst.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return u;
    }
}
