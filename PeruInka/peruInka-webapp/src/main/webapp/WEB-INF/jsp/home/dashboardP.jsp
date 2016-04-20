<%@ page import="org.springframework.web.util.UrlPathHelper"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %><br>

Producto

<a href="frmPerson">Nueva Producto</a>
<br>
<display:table name="${listPerson}" id="item" class="table">
 	<display:column title="Nombre Procucto" property="nombreProducto" />
	<display:column title="Precio" property="precio" />
	<display:column title="Descripcion" property="descripcion" />
	<display:column title="Atributo" property="atributo" />
	<display:column title="Estado" property="estado" />
	<display:column title="Sucursal Id" property="sucursalId"/>
	<display:column title="TipoProducto" property="tipoProducto" />
	<display:column title="OPC">
		<a href="editPerson?id_=${item.id}">Modificar</a>
		<a href="deletePerson?id_=${item.id}">Eliminar</a>
	</display:column>
	
</display:table>