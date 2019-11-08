<%-- Autor: Julian Felipe Velasco --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Longitud y Area</title>
        <link href="Css/Estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form>
            <tr><center>
                <h1>VALOR DEL RADIO DE UNA CIRCUNFERENCIA</h1>
                <div class="Contenedor">
                    <table>
                        <tr><td>Valor del Radio</td> <td> <input type="text" id="Valor"/></td></tr>
                        <tr><td colspan="2" aling="center"> <center><button type="button" class="boton1" onclick="Calcular_Valor()">CALCULAR</button></center></td></tr>
                    </table>
                </div>
                <div id="Respuesta_Servidor"></div>
            </center>
        </form> 
    </body>
    
       <script src="Js/jquery-3.4.1.min.js" type="text/javascript"></script>
       <script type="text/javascript">
        function Calcular_Valor(){
            //Se capturan los datos del formulario
            var Valor=$("#Valor").val();
     
            //Se crea un arreglo para enviar los datos
            var parametros={'Operacion':'Calcular','Valor2':Valor};
            //Se realiza la peticion al servidor con el metodo POST al servlet Servlet_Promedio
            $.ajax({
                type: "POST",
                url: "Servlet_Valor",
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
