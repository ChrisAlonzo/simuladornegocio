<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="controller.controladorusuario" %>
<%@ page import="include.usuario" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="include.tipousuario" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%
    int idusuario = 0;
    try {
        idusuario = Integer.parseInt(request.getParameter("idusuario"));
    }catch (NumberFormatException e) {
    }
    controladorusuario cc = new controladorusuario();
    ArrayList<usuario> Usuario = new ArrayList<usuario>();
    Usuario = cc.obtenerUsuario(idusuario);

%>
<%

    ArrayList<tipousuario> tipousuarios = new ArrayList<tipousuario>();
    tipousuarios = cc.obtenertipousuariosFK();


    String htmlselect = "";
    htmlselect += "<select name=\"tipousuario_idtipousuarios\">\n" +
            "                <option value=\"\" selected disabled> Elige el tipo de usuario" +
            "</option>\n";
    for(int a=0; a<tipousuarios.size();a++){

        htmlselect += "<option value=\""+tipousuarios.get(a).getIdtipousuario()+"\">"+tipousuarios.get(a).getNombre()+"</option>\n";
    }
    htmlselect += "            </select>";

%>
<style>
    body{
        background-image: url(images/user.jpg);
border-image-width: auto;
    background-size: cover;
    color: #fff;
    }
    .login{
        margin-top: 50px;
    }
    .login .card{
        background: rgba(0, 0, 0, .6);
    }
    .login label{
        front-size: 16px;
        color: #ccc;
    }

</style>
<div class="container black-text">
    <form class="col s12" action="/modificarusuario" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar Usuario</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input name="idusuario" type="number" id="idusuario" value="<% out.print(Usuario.get(0).getIdusuario()); %>">
                <label for="idusuario" class="center-align">Id_Usuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="usuario" name="usuario" type="text" value="<% out.print(Usuario.get(0).getUsuario()); %>">
                <label for="usuario" class="center-align">Usuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="password" name="password" type="password" value="<% out.print(Usuario.get(0).getPassword()); %>">
                <label for="password" class="center-align"> Contrasenia</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="last_access" name="last_access" type="text"  value="<% out.print(Usuario.get(0).getLast_access()); %>">
                <label for="last_access" class="center-align">Ultimo acceso</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <%
                    out.print(htmlselect);
                %>

            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Actualizar" href='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="usuarios.jsp">Regresar</a>
            </div>
            <div class="col s2">
            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>