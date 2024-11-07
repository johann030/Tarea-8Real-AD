<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <head><title>ALUMNOS</title></head>
    <style>
      td,tr,th,table{
      border: 1px solid black;
      border-collapse: collapse;
      text-align: center;
      }
      
      .titulo{
      background-color: #AEC6CF;
      color: white;
      width: 100px;
      }
      
      .cuerpo{
      background-color: #FF6F61;
      }
      
      .centrado{
      margin: auto;
      }
      
      h1{
      text-align: center;
      }
    </style>
    <body>
      <table class="centrado">
        <h1>LISTA DE ALUMNOS</h1>
        <tr>
          <td class="titulo">NIA</td>
          <td class="titulo">Nombre</td>
          <td class="titulo">Apellidos</td>
          <td class="titulo">Genero</td>
          <td class="titulo">Fecha Nacimiento</td>
          <td class="titulo">Ciclo</td>
          <td class="titulo">Curso</td>
          <td class="titulo">Grupo</td>
        </tr>
        <xsl:for-each select="//alumno">
          <tr>
            <td class="cuerpo"><xsl:value-of select="NIA"/></td>
            <td class="cuerpo"><xsl:value-of select="nombre"/></td>
            <td class="cuerpo"><xsl:value-of select="apellidos"/></td>
            <td class="cuerpo"><xsl:value-of select="genero"/></td>
            <td class="cuerpo"><xsl:value-of select="fechaNacimiento"/></td>
            <td class="cuerpo"><xsl:value-of select="ciclo"/></td>
            <td class="cuerpo"><xsl:value-of select="curso"/></td>
            <td class="cuerpo"><xsl:value-of select="grupo"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
