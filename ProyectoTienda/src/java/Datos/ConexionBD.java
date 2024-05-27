/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

/**
 *
 * @author Migue
 */

import java.sql.*;

public class ConexionBD {
    static String BD = "TIENDA";
    static String Usuario = "root";
    static String Contra = "";
    static String url = "jdbc:mysql://localhost/"+BD;
    static String mensaje = "";
    
    Connection Con = null;
    
    public ConexionBD()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Con =  DriverManager.getConnection(url,Usuario,Contra);
            
            if(Con != null)
            {
                System.out.print("Conexion a " + BD + " satisfactoria");
            }
        }catch(SQLException e)
        {
                mensaje = e.getMessage();
        }
        catch(ClassNotFoundException e)
        {
                mensaje = e.getMessage();
        }
    }

    public static String getMensaje() {
        return mensaje;
    }

    public static void setMensaje(String mensaje) {
        ConexionBD.mensaje = mensaje;
    }

    public Connection getCon() {
        return Con;
    }

    public void Desconectar()
    {
        Con = null;
    }
    

}
