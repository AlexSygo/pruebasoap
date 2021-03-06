<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:param name="owner" select="'Alex Ospina'"/>
 <xsl:output method="html" encoding="utf8" indent="no"/>
 <xsl:template match="/">
 	<html>
 		<head>
 			<meta charset="utf-8"/>
 			<meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no"/>
 			
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
 			<title>Archivos</title>

 		</head>
 		<body>
 			<h1>Informe 2</h1>
 			<h2>Cruce de dos tablas relacionadas group by- aplica plantilla xsl - Tabla responsive bootsrap</h2>

 			<br/><br/>
 			<table class="table table-responsive table-bordered table-striped">
 			<thead>
			  <tr align="center">
			  <th>Tipo Archivo</th>
			  <th>Cantidad</th>
			  </tr>
			</thead>
			<tbody>
			 <xsl:for-each order-by="+ id_archivo" select="archivos/archivo">
			  <tr>
			  <td><xsl:value-of select="tipoarchivo"/></td>
			  <td><xsl:value-of select="cuenta"/></td>			  
			  </tr>
			 </xsl:for-each>
			</tbody>
			</table>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 		</body>
 	</html>	 
 </xsl:template>
</xsl:stylesheet>