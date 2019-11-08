<%-- Autor: Julian Felipe Velasco Lopez --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hora</title>
        <link href="Css/Estilos.css" rel="stylesheet" type="text/css"/>
   </head>
    <body>
        <form>
            <tr><center>
                <h1>    COMPROBACION DE HORA</h1>
                <div class="Contenedor">
                    <table>
                        <tr><td>Hora</td> <td> <input type="text" id="H"/></td></tr>
                        <tr><td>Minuto</td> <td> <input type="text" id="M"/></td></tr>
                        <tr><td>Segundo</td> <td> <input type="text" id="S"/></td></tr>
                       
                        <tr><td colspan="3" aling="center"> <center><button type="button" class="boton1" onclick="Comprobar_Hora()">COMPROBAR</button></center></td></tr>
                    </table>
                </div>
                <div id="Respuesta_Servidor"></div>
            </center>
        </form> 
    </body>
        <script src="Js/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script type="text/javascript">
        function Comprobar_Hora(){
            //Se capturan los datos del formulario
            var Hora= $("#H").val();
            var Minutos= $("#M").val();
            var Segundos= $("#S").val();
     
            //Se crea un arreglo para enviar los datos
            var parametros={'Operacion':'Comprobar','H':Hora,'M':Minutos,'S':Segundos};
            //Se realiza la peticion al servidor con el metodo POST al servlet Servlet_Promedio
            $.ajax({
                type: "POST",
                url: "Servlet_Hora",
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

