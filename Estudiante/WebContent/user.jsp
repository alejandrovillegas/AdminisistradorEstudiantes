<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> -->
<!-- <link type="text/css" -->
<!--  href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" /> -->
<!-- <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script> -->
<!-- <script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script> -->
<title>Agregar Nuevo Estudiante</title>

<script>function formulario(f) {
if (f.nombre.value   == '') { alert ('El nombre esta vacío'); 
f.nombre.focus(); return false; }
if (f.n1.value   == '') { alert ('la nota 1 Esta vacia'); 
f.nombre.focus(); return false; }
if (f.n2.value   == '') { alert ('la nota 2 Esta vacia'); 
f.nombre.focus(); return false; }
if (f.n3.value   == '') { alert ('la nota 3 Esta vacia'); 
f.nombre.focus(); return false; }
if (f.n4.value   == '') { alert ('la nota 4 Esta vacia'); 
f.nombre.focus(); return false; }
if (f.n1.value   >= 6) { alert ('la nota 1 es superior a 5'); 
f.nombre.focus(); return false; }
if (f.n2.value   >= 6) { alert ('la nota 2 es superior a 5'); 
f.nombre.focus(); return false; }
if (f.n3.value   >= 6) { alert ('la nota 3 es superior a 5'); 
f.nombre.focus(); return false; }
if (f.n4.value   >= 6) { alert ('la nota 4 es superior a 5'); 
f.nombre.focus(); return false; }
}
</script>

</head>
<body>

    <form method="POST" action='UserController' name="frmAddUser" onsubmit="return formulario(this)">
        <input type="hidden"  name="id"
            value="<c:out value="${user.id}" />" /> <br /> 
        Nombre : <input
            type="text" name="nombre"
            value="<c:out value="${user.nombre}" />" /> <br /> 
        Nota 1 : <input
            type="text" name="n1"
            value="<c:out value="${user.n1}" />" /> <br /> 
        Nota 2 : <input
            type="text" name="n2" 
            value="<c:out value="${user.n2}" />"  /> <br /> 
        Nota 3 : <input
            type="text" name="n3" 
            value="<c:out value="${user.n3}" />"  /> <br />
         Nota 4 : <input
            type="text" name="n4" 
            value="<c:out value="${user.n4}" />"  /> <br />
            <input 
type="submit" value="Crear/Actualizar" />
        
    </form>
</body>
</html>