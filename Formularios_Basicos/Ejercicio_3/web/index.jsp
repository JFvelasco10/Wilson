<%-- Autor: Julian Felipe Velasco Lopez --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numeros</title>
    </head>
    <body>
      <center> <h1> DIGITE UN NUMERO </h1> <center>
            
            <form action="Controlador_Numero" method="POST">
                <center> <table>
                        <tr>
                            <td>Numero->></td>
                            <td><input type="text" name="Valor1"/></td>
                        </tr>   
                         <tr>
                             <center><td><input type="submit" name="opera1" value="ENVIAR"/></td></center>     
                        </tr>
                    </table></center>
            </form>
    </body>
</html>
