<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="Logica.Camisa"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%ResultSet Camisa = (ResultSet)session.getAttribute("Camisa");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda web</title>
        <link href='estilosT.css' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <h1>Camisas Registradas</h1>
        <table>
            <tr>
                <th>Id</th><th>Marca</th><th>Color</th><th>Tipo de Camisa</th><th>Talla</th><th>Stock</th><th>Precio (COP)</th><th>acciones</th>
            </tr>
                    <% while (Camisa.next()){ %>
                    <tr>
                        <td><%= Camisa.getString("Id_Camisa") %></td>
                        <td><%= Camisa.getString("Marca_Camisa") %></td>
                        <td><%= Camisa.getString("Color_Camisa") %></td>
                        <td><%= Camisa.getString("Tipo_Camisa") %></td>
                        <td><%= Camisa.getString("Talla_Camisa") %></td>
                        <td><%= Camisa.getString("Num_Stock") %></td>
                        <td><%= Camisa.getString("Precio") %></td>
                        <td class="links">
                            <a href="CargarCamisa?op=Editar&id=<%= Camisa.getString("Id_Camisa") %>">Editar</a>
                            <a href="CargarCamisa?op=Delete&id=<%= Camisa.getString("Id_Camisa") %>">Borrar</a>
                        </td>
                    </tr>
                <% }%>
        </table>
    <center>
        <br><br>
        <div id="Inicio">
            <a id="In" href="menuProv.jsp">INICIO</a>
        </div>
    </center>
    </body>
</html>
