<%-- Autor: Julian Felipe Velasco Lopez --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area triangulo</title>
    </head>
    <body>
      <center> <h1> HALLAR EL AREA DEL TRIANGULO </h1> <center>
            
            <form action="Triangulo" method="POST">
                <center> <table>
                        <tr>
                            <td>BASE</td>
                            <td><input type="text" name="Valor1"/></td>
                        </tr>   
                         <tr>
                            <td>ALTURA</td>
                            <td><input type="text" name="Valor2"/></td>
                        </tr>
                         <tr>
                             <td><input type="submit" name="opera1" value="HALLAR"/></td>     
                        </tr>
                    </table></center>
            </form>
    </body>
</html>


