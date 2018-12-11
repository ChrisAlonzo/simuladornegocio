<%@ page contentType="text/html;charset=UTF-8" language="java" %>
+<%@ page import="controller.controladortipousuario" %>
<%@ page import="include.tipousuario" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%
    int idtipousuario = 0;
    try {
        idtipousuario = Integer.parseInt(request.getParameter("idtipousuario"));
    } catch (NumberFormatException e){

    }
    controladortipousuario cc = new controladortipousuario();
    ArrayList<tipousuario> tipousuario = new ArrayList<tipousuario>();
    tipousuario = cc.obtenertipousuario(idtipousuario);
%>
<style>
    body{
        background-image: url(images/user.jpg);
        border-image-width: auto;
        background-size: cover;
        color: #fff;
    }

</style>
<div class="container">
    <form class="col s12" action="/modificartipousuario" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar el Tipo de Usuario</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="idtipousuario" name="idtipousuario" type="number" value="<% out.print(tipousuario.get(0).getIdtipousuario()); %>">
                <label for="idtipousuario" class="center-align">Id_tipousuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="nombre" name="nombre" type="text" value="<% out.print(tipousuario.get(0).getNombre()); %>">
                <label for="nombre" class="center-align">Nombre</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="no_empresas" name="no_empresas" type="text" value="<% out.print(tipousuario.get(0).getNo_empresas()); %>">
                <label for="no_empresas" class="center-align">No_empresas</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>

        </div>
        <div class="row margin">
            <div class="col s2">

            </div>

        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">

            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s2">
      <div class="input-field col s8">
                <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s12 light-green">

            </div>
            <div class="col s2">

            </div>
        </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
