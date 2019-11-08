<%-- Autor: Julian Felipe Velasco Lopez --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temperatura</title>
        <link href="Css/Estilos.css" rel="stylesheet" type="text/css"/>
        
  </head>
    <body>
        <form>
            <tr><center>
                <h1>CONVERSION DE GRADOS CENTIGRADOS A FAHRENHEIT</h1>
                <div class="Contenedor">
                    <table>
                        <tr><td>Grados Centigrados</td> <td> <input type="text" id="Grados"/></td></tr>
                        <tr><td colspan="2" aling="center"> <center><button type="button" class="boton1" onclick="Convertir_Grados()">CONVERTIR</button></center></td></tr>
                    </table>
                </div>
                <div id="Respuesta_Servidor"></div>
            </center>
        </form> 
    </body>
       <script src="Js/jquery-3.4.1.min.js" type="text/javascript"></script>
       <script type="text/javascript">
        function Convertir_Grados(){
            //Se capturan los datos del formulario
            var Grados=$("#Grados").val();
     
            //Se crea un arreglo para enviar los datos
            var parametros={'Operacion':'Convertir','Grads':Grados};
            //Se realiza la peticion al servidor con el metodo POST al servlet Servlet_Promedio
            $.ajax({
                type: "POST",
                url: "Servlet_Temperatura",
                data: parametros,
                dataType:"text",
                success: function (resp){
                    $('#Respuesta_Servidor').html(resp);
                }
            }).fail(function (jqXHR, textStatus, errorThrown){
                alert("Error: "+ jqXHR.status);
            });
            
    }
        
    </script>
</html>
