<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<link rel="stylesheet" href="styles.css"/>
<html>

<head>
<meta charset="utf-8" />
	<title> Delicias Kitchen </title>
  
<div class="sticky">
	<ul class="navigation">
		<a href="index.html">INICIO</a>
		<a href="index.html">SOBRE MÍ</a>
		<a href="recetas.html">RECETAS</a>
		<a href="contacto.html">CONTACTO</a>
		<a href="otrascosas.html">OTRAS COSAS</a>
	</ul>
</div>
</head>
<body>

  <h2>Listado de Recetas</h2>
  <table>
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Receta</th>
      <th style="text-align:center">Dificultad</th>
      <th style="text-align:center">Tipo de Cocina</th>
      <th style="text-align:center">Tiempo</th>
      <th style="text-align:center">Vegetariana</th>
      <th style="text-align:center">Celíacos</th>
      <th style="text-align:center">Anticáncer</th>
      <th style="text-align:center">Link Receta</th>
    </tr>
    <xsl:for-each select="listado/receta">
    <tr>
      <td class="receta"><xsl:value-of select="receta"/></td>
      <td><xsl:value-of select="dificultad"/></td>
      <td><xsl:value-of select="cocina"/></td>
      <td><xsl:value-of select="tiempo"/></td>
      <td><xsl:value-of select="vegetariana"/></td>
      <td><xsl:value-of select="celiacos"/></td>
      <td><xsl:value-of select="anticancer"/></td>
      <td>
        <a href="receta.html" class="buttn">Ver</a>
      </td>
          
    </tr>
    </xsl:for-each>
  </table>
<footer>
		<ul>
			<a>Facebook</a>
			<a>Twitter</a>
			<a>Instagram</a>
			<a>Pinterest</a>
			<a>Email</a>
			<a>RSS</a>
		</ul>
	</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

