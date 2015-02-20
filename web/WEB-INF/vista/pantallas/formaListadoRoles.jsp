    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="/WEB-INF/vista/etiquetas/struts-html.tld" prefix="html" %>
<style>
  .HipervinculoAdmon{
    color:#000000;
	text-decoration:none;
  }
  
  .HipervinculoAdmon:hover{
    color:#006666;
	text-decoration:underline;
  }
</style>
<script language="javascript" type="text/javascript">
<!--
  function EliminarRol(strRolName){
    return confirm("¿Desea eliminar el rol '" + strRolName + "'?")
  }
-->
</script>
    <br>
    <font size='10'><fmt:message key="formaListadoRoles.titulo" /></font>
    <div class="table" style="width:100%" >
        <div class="tr">
            <div class="td" colspan="4" style="padding-top:25px; padding-bottom:25px; font-size:18px;">
                <a href="solicitarRegistroRol.do" class="HipervinculoAdmon boton">Agregar nuevo rol...</a>
            </div>
        </div>
        <div class="tr">
            <div class="td" colspan="4">
               <html:errors />
            </div>
        </div>
        <div class="tr" style="background: transparent; border: 0px; clear: 0; font-size: 25px;">
         <div class="td" style="width:15%"><b><fmt:message key="formaListadoRoles.etiqueta.nombre" /></b></div>
         <div class="td" style="width:20%;border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoRoles.etiqueta.descripcion" /></b></div>
         <div class="td" style="width:15%"><b><fmt:message key="formaListadoRoles.etiqueta.administracion" /></b></div>
        </div>
        <c:forEach var="rol" items="${formaListadoRoles.roles}">
            <div class="tr">
                <div class="td" align="left" style="width:15%"><c:out value="${rol.nombre}"/></div>
                <div class="td" align="left" style="width:20%"><c:out value="${rol.descripcion}"/></div>
                <div class="td" align="left" style="width:25%">
                    <a href='solicitarModificarRol.do?id=<c:out value="${rol.id}"/>'
					   class="HipervinculoAdmon" style="color: green;">
                        <fmt:message key="formaListadoRoles.etiqueta.modificar" />
                    </a>
                    <a href='procesarEliminarRol.do?id=<c:out value="${rol.id}"/>'
					   onClick="javascript: return EliminarRol('<c:out value="${rol.nombre}"/>')"
					   class="HipervinculoAdmon" style="color: red;">
                        <fmt:message key="formaListadoRoles.etiqueta.eliminar" />
                    </a>
                </div>
            </div>
        </c:forEach>
        <div class="tr">
            <div class="td" colspan="4" align="right" style="padding-top:25px;"><b>Total:</b> ${formaListadoRoles.contador}</div>
        </div>
    </div>