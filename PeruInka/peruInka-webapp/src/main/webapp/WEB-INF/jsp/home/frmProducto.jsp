<%@ page import="org.springframework.web.util.UrlPathHelper"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>


Producto : ${opc} <br>

${message} 

<form:form commandName="Producto" action="savePerson" method="POST">
NombreProducto: <form:input path="nombreProducto" id="nombreproducto"/><br>
Precio: <form:input path="precio" id="precio"/><br>
Descripcion: <form:input path="descripcion" id="descripcion"/><br>
Atributo: <form:input path="atributo" id="atributo"/><br>
Estado: <form:input path="status" id="status"/><br>
SucursalId: <form:input path="sucursal" id="sucursal"/><br>
TipodeProducto: <form:input path="tipoProducto" id="tipoProducto"/><br>
<input type="hidden" name="opc" id="opc" value="${opc}"><br>

<button type="submit">Guardar</button>

</form:form>