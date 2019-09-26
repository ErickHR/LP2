package modelo.dao;

import conextion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.bean.Alumno;

public class AlumnoDAO {

    public static Alumno buscarID(int cod) {
        Alumno al = null;
        String sql = "select *from alumno where codal=?";
        Connection cn = Conexion.abrir();
        try {
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, cod);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                al = new Alumno();
                al.setCodal(rs.getInt("codal"));
                al.setNombre(rs.getString("nombre"));
                al.setApaterno(rs.getString("apaterno"));
                al.setAmaterno(rs.getString("amaterno"));
                al.setDireccion(rs.getString("direccion"));
                al.setFoto(rs.getString("foto"));
            }
            pst.close();
            rs.close();
            cn.close();
            return al;
        } catch (SQLException ex) {
            return null;
        }
    }
    
     public static ArrayList<Alumno> listar() {
         ArrayList<Alumno> lista = new ArrayList<>();
        Alumno al = null;
        String sql = "select *from alumno";
        Connection cn = Conexion.abrir();
        try {
            PreparedStatement pst = cn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                al = new Alumno();
                al.setCodal(rs.getInt("codal"));
                al.setNombre(rs.getString("nombre"));
                al.setApaterno(rs.getString("apaterno"));
                al.setAmaterno(rs.getString("amaterno"));
                al.setDireccion(rs.getString("direccion"));
                al.setFoto(rs.getString("foto"));
                lista.add(al);
            }
            pst.close();
            rs.close();
            cn.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
}
