<%-- Autor: Julian Felipe Velasco Lopez --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
   
    </head>
    <body>
    <center> <h1>FORMULARIO CALCULADORA</h1> <center>
            
            <form action="Controlador_Ejemplo" method="POST">
                <center> <table>
                        <tr>
                            <td>Valor1</td>
                            <td><input type="text" name="Valor1"/></td>
                        </tr>   
                         <tr>
                            <td>Valor2</td>
                            <td><input type="text" name="Valor2"/></td>
                        </tr>
                         <tr>
                             <center><td><input type="submit" name="opera1" value="Sumar"/></td></center>     
                        </tr>
                    </table></center>
            </form>
    </body>
</html>
