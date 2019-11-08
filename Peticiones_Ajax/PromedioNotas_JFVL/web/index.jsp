<%-- Autor: Julian Felipe Velasco Lopez --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Promedio</title>
        <link href="Css/Estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form>
            <tr><center>
                <h1>PROMEDIO DE NOTAS</h1>
                <div class="Contenedor">
                    <table>
                        <tr><td>Nota 1</td> <td> <input type="text" id="nta1"/></td></tr>
                        <tr><td>Nota 2</td> <td> <input type="text" id="nta2"/></td></tr>
                        <tr><td>Nota 3</td> <td> <input type="text" id="nta3"/></td></tr>
                        <tr><td colspan="3" aling="center"> <center><button type="button" class="boton1" onclick="Calcular_Promedio()">CALCULAR</button></center></td></tr>
                    </table>
                </div>
                <div id="Respuesta_Servidor"></div>
            </center>
        </form> 
    </body>
    <script src="Js/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function Calcular_Promedio(){
            //Se capturan los datos del formulario
            var Nota1= $("#nta1").val();
            var Nota2= $("#nta2").val();
            var Nota3= $("#nta3").val();
     
            //Se crea un arreglo para enviar los datos
            var parametros={'Operacion':'Calcular','nta1':Nota1,'nta2':Nota2,'nta3':Nota3};
            //Se realiza la peticion al servidor con el metodo POST al servlet Servlet_Promedio
            $.ajax({
                type: "POST",
                url: "Servlet_Promedio",
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

