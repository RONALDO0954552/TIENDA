/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

/**
 *
 * @author Migue
 */
import Logica.Camisa;
import java.sql.*;
import java.io.IOException;
import javax.servlet.http.*;
import Logica.Usuario;

public class TiendaBD {
    
    ConexionBD con;
    
    public TiendaBD()
    {
        con = new ConexionBD();
    }
    
    public ResultSet MostrarTodosUsuarios() throws SQLException
    {
        PreparedStatement pstm = con.getCon().prepareStatement("SELECT * FROM Usuario");
        
        ResultSet Res = pstm.executeQuery();
        return Res;
    }
    
    public ResultSet MostrarCamisas() throws SQLException
    {
        PreparedStatement pstm = con.getCon().prepareStatement("SELECT * FROM Camisa");
        
        ResultSet Res = pstm.executeQuery();
        return Res;
    }
    
    public ResultSet SesionUsuario(String Correo, String Contra) throws SQLException
    {
        PreparedStatement pstm = con.getCon().prepareStatement("SELECT Tipo_Usuario FROM Usuario WHERE Correo = ? AND Contrasenia = ?;");
        
        pstm.setString(1, Correo);
        pstm.setString(2, Contra);
        
        ResultSet Res = pstm.executeQuery();
        return Res;
    }
    
    public void ValidarSesion(HttpServletRequest request, HttpServletResponse response, String Correo, String Contra) throws IOException
    {
        try
        {
            ResultSet Res = SesionUsuario(Correo, Contra);
            
            String ResString = "";
                    
            if(Res.next())
            {
                ResString = Res.getString(1);
            }
            
            if(ResString.equals("Cliente"))
            {
                response.sendRedirect("menuCli.jsp");
            }
            else if(ResString.equals("Proveedor"))
            {
                response.sendRedirect("menuProv.jsp");
            }
            else if(ResString.equals("Administrador"))
            {
                response.sendRedirect("menuAdmin.jsp");
            }
            else
            {
                response.sendRedirect("error.jsp");
            }
        }catch (SQLException e) 
        {
            System.out.print(e);
        }
    }
    
    public void RegistroCliente(Usuario C)
    {
        try
        {
        PreparedStatement pstm = con.getCon().prepareStatement("INSERT INTO Usuario (Nombre, Tipo_Usuario, Correo, Contrasenia, Num_Documento, Genero, Direccion, Telefono)" +
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        pstm.setString (1, C.getNombre());
        pstm.setString (2, C.getTipo_Usuario());
        pstm.setString (3, C.getCorreo());
        pstm.setString (4, C.getContrasenia());
        pstm.setString (5, C.getNumDocumento());
        pstm.setString (6, C.getGenero());
        pstm.setString (7, C.getDireccion());
        pstm.setString (8, C.getTelefono());
        
        pstm.executeUpdate();
        }
        catch (SQLException e) 
        {
            System.out.println(e);
        }
    }
    
    public void InsertarCamisa (Camisa Ca)
    {
        try
        {
            PreparedStatement pstm = con.getCon().prepareStatement("INSERT INTO Camisa (Marca_Camisa, Color_Camisa, Tipo_Camisa, Talla_Camisa, Num_Stock, Precio)" +
            "VALUES (?,?,?,?,?,?);");
            
            pstm.setString(1, Ca.getMarca());
            pstm.setString(2, Ca.getColor());
            pstm.setString(3, Ca.getTipo_Ca());
            pstm.setString(4, Ca.getTalla());
            pstm.setInt(5, Ca.getStock());
            pstm.setInt(6, Ca.getPrecio());
            
            pstm.executeUpdate();
            
        }
        catch (SQLException e) 
        {
            System.out.println(e);
        }
    }
    
    public String getMensaje() {
        return con.getMensaje();
    }

}
