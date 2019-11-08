<%-- 
    Document   : index
    Created on : 18/10/2019, 11:04:17 AM
    Author     : Julian Felipe Velasco Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/Estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
    <center> <form>
            <div class="contenedor">
             <p class="box1">CASSIO</p>
            <tr>
                <table>
            <tr><td  colspan="4"><input type="text" id="Pantalla"/></td></tr>
            <tr><td> <button type="button" class="boton" onclick="Asig_Uno()" id="Uno">1</button></td>
            <td> <button type="button" class="boton" onclick="Asig_Dos()" id="Dos">2</button></td>
            <td> <button type="button" class="boton" onclick="Asig_Tres()" id="Tres">3</button></td>
            <td> <button type="button" class="boton3" class="boton" onclick="Asig_AC()" id="AC">AC</button></td></tr>
           
            <tr><td> <button type="button" class="boton" onclick="Asig_Cuatro()" id="Cuatro">4</button></td>
            <td> <button type="button" class="boton" onclick="Asig_Cinco()" id="Cinco">5</button></td>
            <td> <button type="button" class="boton" onclick="Asig_Seis()" id="Seis">6</button></td>
            <td> <button type="button" class="boton2" onclick="Asig_Menos()" id="Menos">-</button></td></tr>
            
            <tr><td> <button type="button" class="boton" onclick="Asig_Siete()" id="Siete">7</button></td>
            <td> <button type="button" class="boton" onclick="Asig_Ocho()" id="Ocho">8</button></td>
            <td> <button type="button" class="boton" onclick="Asig_Nueve()" id="Nueve">9</button></td>
            <td> <button type="button" class="boton1" onclick="Asig_Division()" id="Division">/</button></td></tr>
            
            <tr><td> <button type="button" class="boton" onclick="Asig_Cero()" id="Cero">0</button></td>
            <td> <button type="button" class="boton5" onclick="Asig_Multi()" id="Multi">*</button></td>
            <td> <button type="button" class="boton" onclick="Asig_Igual()" id="Igual">=</button></td>
            <td> <button type="button" class="boton4" onclick="Asig_Mas()" id="Mas">+</button></td></tr>
           </table>
            </div>
             </form></center>
    
    </body>

    <script src="JS/jquery-3.4.1.min.js" type="text/javascript"></script>
    
     

</html>


   <script  type="text/javascript">
            
    var valor;
    var dato1;
    var dato2;
    var Operacion;
    
   
    function  Asig_Mas(){
     dato1=  $('#Pantalla').val(); 
    $('#Pantalla').val('');
    Operacion = "Suma";
    }
    function  Asig_Menos(){
     dato1=  $('#Pantalla').val(); 
    $('#Pantalla').val('');
    Operacion = "Resta";
    }
    function  Asig_Multi(){
     dato1=  $('#Pantalla').val(); 
    $('#Pantalla').val('');
    Operacion = "Multiplicacion";
    }
    
    function  Asig_Division(){
     dato1=  $('#Pantalla').val(); 
    $('#Pantalla').val('');
    Operacion = "Division";
    }
    function Asig_Uno(){
     valor=$('#Pantalla').val(); 
    $('#Pantalla').val(valor+1);
    }
    
     function Asig_Dos(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+2);
    } 
    
   function Asig_Tres(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+3);
    }    
   function Asig_Cuatro(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+4);
    }    
  
   function Asig_Cinco(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+5);
    }  
    
   function Asig_Seis(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+6);
    }  
    
   function Asig_Siete(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+7);
    }   
    
   function Asig_Ocho(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+8);
    }    
    
   function Asig_Nueve(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+9);
    } 
    
   function Asig_Cero(){
     valor=  $('#Pantalla').val(); 
    $('#Pantalla').val(valor+0);
    }    
      
   function  Asig_Igual(){
     dato2=$('#Pantalla').val(); 
    if (Operacion == "Suma"){
        $('#Pantalla').val(parseFloat(dato1)+parseFloat(dato2));
    }
    if (Operacion == "Resta"){
        $('#Pantalla').val(parseFloat(dato1)-parseFloat(dato2));
    }
     if (Operacion == "Multiplicacion"){
        $('#Pantalla').val(parseFloat(dato1)*parseFloat(dato2));
    }
     if (Operacion == "Division"){
        $('#Pantalla').val(parseFloat(dato1)/parseFloat(dato2));
    }
    
    }
    
     function  Asig_AC(){
     dato1=0; 
     dato2=0;  
     $('#Pantalla').val(''); 
   
    }
   
 
    </script>