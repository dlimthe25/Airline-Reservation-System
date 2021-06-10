/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Home;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author David
 */
public class ConnectorManager {
    private static String url = "jdbc:mysql://localhost:3306/ars_db";
    private static String driverName = "com.mysql.cj.jdbc.Driver";
    private static String sql_uname = "root";
    private static String sql_pass = "root";
    private static Connection connection;
    private static String urlstring;

        
    public static Connection getConnection() {
        try{
            Class.forName(driverName);
            try{
                connection = DriverManager.getConnection(url,sql_uname,sql_pass);
                System.out.println("Connection Successful");
            } catch (SQLException ex) {
                System.out.println("Failed to create the database connection.");
                ex.printStackTrace();
            }
        }catch (ClassNotFoundException ex) {
            System.out.println("Driver not found.");
        }

        return connection;
    }

    public static void main(String[] args) {
        getConnection();
        System.out.println(url);
    }
}