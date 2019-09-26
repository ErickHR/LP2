package conextion;

import java.sql.Connection;
import java.sql.DriverManager;
public class Conexion {
    private static String url = "jdbc:mysql://localhost/bduntels";
    private static String user = "root";
    private static String pas = "12345678";
    private static Connection cn;
    public static  Connection abrir() {
        try {
            //registar driver para mysql
            Class.forName("com.mysql.jdbc.Driver");
            //abre la conexion y la retorna en el objeto cn
            cn = DriverManager.getConnection(url, user, pas);
            return cn;
        } catch (Exception ex) {
            return null;
        }
    }
}
