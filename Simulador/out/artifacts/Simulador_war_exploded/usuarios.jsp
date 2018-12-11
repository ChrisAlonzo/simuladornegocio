<jsp:include page='views/header.jsp'></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="include.usuario" %>
<%@ page import="controller.controladorusuario" %>
<%@ page import="java.util.ArrayList" %>

<style>
body{
background-image: url(images/dbz.jpe);
    background-size: cover;
    color: #fff;
}

.login{
    margin-top: 100%;
}
  </style>
<div class="container black-text">
    <div class="row">
        <div class="input-field col s12 center ">
            <h3>Usuarios</h3>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <a class="btn cyan" href="a_usuario.jsp">Nuevo</a>
            </div>
        </div>
        <div class="row margin">
            <div class="col s12 center">
                <table class="striped">
                    <thead>
                    <tr>
                        <th>ID_USUARIO</th>
                        <th>USUARIO</th>
                        <th>PASSWORD</th>
                        <th>LAST_ACCESS</th>
                        <th>TIPOUSUARIO_IDTIPOUSUARIO</th>
                    </tr>
                    </thead>
<%
        String htmlcode = "<tbody>";
        controladorusuario cc = new controladorusuario();
        int contador = 0;
        ArrayList<usuario> usuarios = new ArrayList<usuario>();
        usuarios = cc.obtenerusuarios();
        if(usuarios.size() > 0){
            for(int a=0; a<usuarios.size();a++){
                htmlcode += "<tr><td>" + usuarios.get(a).getIdusuario()
                        + "</td><td>" + usuarios.get(a).getUsuario()
                        + "</td><td>" + usuarios.get(a).getPassword()
                        + "</td><td>" + usuarios.get(a).getLast_access()
                        + "</td><td>" + usuarios.get(a).getIdtipousuario()

                        + "<td><a class=\"btn blue\" href=\"m_usuario.jsp?idusuario="+usuarios.get(a).getIdusuario()+"\"><i class=\"material-icons\">create</i></a>"
                        + "<a class=\"btn red\" onclick=\"delete_usuario("+ usuarios.get(a).getIdusuario()+")\"><i class=\"material-icons\">delete</i></a>"
                        + "</td></tr>";
            }
            } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen usuarios</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
                </table>
            </div>
        </div>
    </div>
    <jsp:include page='views/footer.jsp'></jsp:include>