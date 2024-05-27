<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
	<head>
		<title>Formulario Proveedor de Camisas</title>
		<link href="estilosR.css" rel="stylesheet" type="text/css" />
		<meta charset="UTF-8">
	</head>
	<body>
        <center>
                        <h1 id="titulo">Insertar Nueva Camisa</h1>
		<form id="FormC" action="RegCamisa" method="get">
			<h2>Datos de la Camisa</h2>
			<h3>Marca:</h3>
			<input required id="MarcaCa" name="MarcaCa" placeholder="Ingrese la marca">
			<h3>Color:</h3>
			<input required id="ColorCa" name="ColorCa" placeholder="Ingrese el color">
                        <h3>Tipo de Camisa:</h3>
			<select id="TipoCa" name="TipoCa"">
				<option>Normal</option>
                                <option>Camiseta</option>
                                <option>Manga Larga</option>
			</select>
                        <h3>Talla de la Camisa</h3>
			<input required id="TallaCa" name="TallaCa" placeholder="Ingrese la talla">
			<h3>Stock de la Camisa</h3>
			<input required id="StockCa" name="StockCa" type="number" placeholder="Ingrese el stock">
			<h3>Precio de la Camisa</h3>
			<input required id="PrecioCa" name="PrecioCa" type="number" placeholder="Ingrese el precio">
			<br><br>
			<button type="submit">INSERTAR</button>
                        <br>
                        <div id="Inicio">
                            <a id="In" href="menuProv.jsp">VOLVER AL MENU</a>
                        </div>
                        <br>
		</form>
        </center>
	</body>
</html>
