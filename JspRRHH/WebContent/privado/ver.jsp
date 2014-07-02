<%@page import="com.luis.modelo.Empleado"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
HashMap<String,Empleado> mapa=
		(HashMap<String,Empleado>)application.getAttribute("empleados");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

Bienvenido

<table>
<tr><th>
Nombre
</th>
</tr>
<%
for(Empleado emple:mapa.values()){
%>
<tr>
<td>
<%=emple.getNombre() %>
</td>
</tr>
<%
}
%>
</table>

</body>
</html>