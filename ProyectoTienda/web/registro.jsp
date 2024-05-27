<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
	<head>
		<title>Formulario Registro</title>
		<link href="estilosR.css" rel="stylesheet" type="text/css" />
		<meta charset="UTF-8">
	</head>
	<body>
        <center>
                        <h1 id="titulo">Registro Cliente</h1>
		<form id="FormC" action="RegCliente" method="get">
			<h2>Datos del Cliente</h2>
			<h3>Nombre:</h3>
			<input required id="NombreC" name="NombreC" placeholder="Ingrese el nombre">
			<h3>Correo:</h3>
			<input required id="CorreoC" name="CorreoC" type="email" placeholder="Ingrese el correo">
                        <h3>Contraseña:</h3>
			<input required id="ContraC" name="ContraC" placeholder="Ingrese la contraseña">
			<h3>Numero de Documento:</h3>
			<input required id="DocC" name="DocC" type="number" placeholder="Ingrese el num. de documento">
                        <h3>Genero:</h3>
			<select id="GeneroC" name="GeneroC"">
				<option>Masculino</option>
                                <option>Femenino</option>
                                <option>Otro</option>
			</select>
			<h3>Direccion:</h3>
			<input required id="DirC" name="DirC" placeholder="Ingrese la direccion">
			<h3>Telefono:</h3>
			<input required id="TelC" name="TelC" type="number" placeholder="Ingrese el num. de tel.">
			<br><br>
			<button type="submit">REGISTRARSE</button>
                        <br>
                        <div id="Inicio">
                            <a id="In" href="Inicio">INICIO</a>
                        </div>
                        <br>
		</form>
        </center>
	</body>
</html>
