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
<form:form commandName="Sucursal" action="savePerson" method="POST">

RazonSocial: <form:input path="razonSocial" id="razonSocial"/><br>
RUC: <form:input path="ruc" id="ruc"/><br>
NroTelefono: <form:input path="nrotelefono" id="nrotelefono"/><br>
Estado: <form:input path="status" id="status"/><br>

<input type="hidden" name="opc" id="opc" value="${opc}"><br>

<button type="submit">Guardar</button>

</form:form>