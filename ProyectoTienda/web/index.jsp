<!DOCTYPE html>
<html>
	<head>
		<title>Inicio de Sesion</title>
		<link href="estilos.css" rel="stylesheet" type="text/css" />
		<meta charset="UTF-8">
	</head>
	<body>
        <center>
                        <h1 id="titulo">GONOBIKERS</h1>
		<form id="FormLogin" action="ValidarDatos" method="get">
                        <h2>Inicio de Sesion</h2>
			<h3>Correo:</h3>
			<input required id="Correo" name="Correo" type="email" placeholder="Ingrese el correo">
			<h3>Contraseña:</h3>
			<input required id="Contra" name="Contra" type="password" placeholder="Ingrese la contraseña">
                        <br><br>
			<button type="submit">INICIAR SESION</button>
                        <br>
                        <p>No tiene cuenta? <a href="registro.jsp">Registrese</a></p>
		</form>
        </center>
	</body>
</html>
