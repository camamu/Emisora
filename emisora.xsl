<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="Estiloxslt.css"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        </script>
        <script> 
          $(document).ready(function(){
          $("#lunes").hover(function(){
          $("#panel1").slideToggle("slow");
          });
          $("#martes").hover(function(){
          $("#panel2").slideToggle("slow");
          });
          $("#miercoles").hover(function(){
          $("#panel3").slideToggle("slow");
          });
          $("#jueves").hover(function(){
          $("#panel4").slideToggle("slow");
          });
          $("#viernes").hover(function(){
          $("#panel5").slideToggle("slow");
          });
          $("#sabado").hover(function(){
          $("#panel6").slideToggle("slow");
          });
          $("#domingo").hover(function(){
          $("#panel7").slideToggle("slow");
          });
          $("#trabajadores").hover(function(){
          $("#panel8").slideToggle("slow");
          });
          });
        </script>
      </head>
      <body>
        <div align="center" class="cabecera">
          <div class="email">
            <p>
              <xsl:value-of select="emisora/email"/>
            </p>
          </div>
          <h1>
            <xsl:value-of select="emisora/nombre"/>
            <img height="170" width="150">
              <xsl:attribute name="src">
                <xsl:value-of select="emisora/logo"/>
              </xsl:attribute>
            </img>
          </h1>
          <hr/>
          <p class="eslogan">
            <xsl:value-of select="emisora/eslogan"/>
          </p>
          <hr/>
        </div>
        <div class="caratula">
          <h2 class="tituloCentrado">Nº1 del Top10:</h2>
          <xsl:for-each select="emisora/top10/disco">
            <xsl:if test="posicion = 01">
              <img class="caratulaa">
                <xsl:attribute name="src">
                  <xsl:value-of select="caratula"/>
                </xsl:attribute>
              </img>
              <p class="caratula"> Titulo: <xsl:value-of select="titulo"/><br/> Artista:
                  <xsl:value-of select="artista"/>
              </p>
            </xsl:if>
          </xsl:for-each>
        </div>
        <h2 class="tituloCentrado">Horario:</h2>
        <div id="lunes">Lunes <table id="panel1">
            <tr>
              <th>Hora</th>
              <th>Programa</th>
              <th>Locutor</th>
            </tr>
            <xsl:for-each select="emisora/programacion/horario">
              <xsl:if test="dia = 'lunes'">
                <tr>
                  <td><xsl:value-of select="hora"/></td>
                  <td><xsl:value-of select="programa"/></td>
                  <td><xsl:value-of select="locutor"/></td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </div>
        <div id="martes">Martes <table id="panel2">
            <tr>
              <th>Hora</th>
              <th>Programa</th>
              <th>Locutor</th>
            </tr>
            <xsl:for-each select="emisora/programacion/horario">
              <xsl:if test="dia = 'martes'">
                <tr>
                  <td><xsl:value-of select="hora"/></td>
                  <td><xsl:value-of select="programa"/></td>
                  <td><xsl:value-of select="locutor"/></td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </div>
        <div id="miercoles">Miercoles <table id="panel3">
            <tr>
              <th>Hora</th>
              <th>Programa</th>
              <th>Locutor</th>
            </tr>
            <xsl:for-each select="emisora/programacion/horario">
              <xsl:if test="dia = 'miercoles'">
                <tr>
                  <td><xsl:value-of select="hora"/></td>
                  <td><xsl:value-of select="programa"/></td>
                  <td><xsl:value-of select="locutor"/></td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </div>
        <div id="jueves">Jueves <table id="panel4">
            <tr>
              <th>Hora</th>
              <th>Programa</th>
              <th>Locutor</th>
            </tr>
            <xsl:for-each select="emisora/programacion/horario">
              <xsl:if test="dia = 'jueves'">
                <tr>
                  <td><xsl:value-of select="hora"/></td>
                  <td><xsl:value-of select="programa"/></td>
                  <td><xsl:value-of select="locutor"/></td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </div>
        <div id="viernes">Viernes <table id="panel5">
            <tr>
              <th>Hora</th>
              <th>Programa</th>
              <th>Locutor</th>
            </tr>
            <xsl:for-each select="emisora/programacion/horario">
              <xsl:if test="dia = 'viernes'">
                <tr>
                  <td><xsl:value-of select="hora"/></td>
                  <td><xsl:value-of select="programa"/></td>
                  <td><xsl:value-of select="locutor"/></td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </div>
        <div id="sabado">Sabado <table id="panel6">
            <tr>
              <th>Hora</th>
              <th>Programa</th>
              <th>Locutor</th>
            </tr>
            <xsl:for-each select="emisora/programacion/horario">
              <xsl:if test="dia = 'sabado'">
                <tr>
                  <td><xsl:value-of select="hora"/></td>
                  <td><xsl:value-of select="programa"/></td>
                  <td><xsl:value-of select="locutor"/></td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </div>
        <div id="domingo">Domingo <table id="panel7">
            <tr>
              <th>Hora</th>
              <th>Programa</th>
              <th>Locutor</th>
            </tr>
            <xsl:for-each select="emisora/programacion/horario">
              <xsl:if test="dia = 'domingo'">
                <tr>
                  <td><xsl:value-of select="hora"/></td>
                  <td><xsl:value-of select="programa"/></td>
                  <td><xsl:value-of select="locutor"/></td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </div>
        <h2 class="tituloCentrado">Información de los locutores:</h2>
        <div id="trabajadores"> Trabajadores <table id="panel8">
            <tr>
              <th>Nombre</th>
              <th>Apellidos</th>
              <th>E-mail</th>
              <th>Cargo</th>
              <th>Telefono</th>
            </tr>
            <xsl:for-each select="emisora/personal/empleado">
              <tr>
                <td>
                  <xsl:value-of select="nombre"/>
                </td>
                <td>
                  <xsl:value-of select="apellidos"/>
                </td>
                <td>
                  <xsl:value-of select="email"/>
                </td>
                <td>
                  <xsl:value-of select="cargo"/>
                </td>
                <td>
                  <xsl:value-of select="telefono"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </div>
        <h2 class="tituloCentrado">Top10</h2>
        <xsl:for-each select="emisora/top10/disco">
          <xsl:sort select="posicion"/>
          <div class="img">
            <h3 class="tituloCentrado">
              <xsl:value-of select="posicion"/>
            </h3>
            <hr/>
            <br/>
            <p>
              <xsl:value-of select="titulo"/>
              <br/>
              <xsl:value-of select="artista"/>
            </p>
            <img align="left">
              <xsl:attribute name="src">
                <xsl:value-of select="caratula"/>
              </xsl:attribute>
            </img>
            <div class="desc">
              <p>
                <ol>
                  <xsl:for-each select="tracklist/pista">

                    <li class="lista">
                      <xsl:value-of select="nombre"/>
                    </li>

                  </xsl:for-each>
                </ol>
              </p>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
