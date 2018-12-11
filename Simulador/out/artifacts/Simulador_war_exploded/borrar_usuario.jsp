
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="controller.controladorusuario" %>
<%
    int idusuario = 0;
    try {
        idusuario = Integer.parseInt(request.getParameter("idusuario"));

    } catch (NumberFormatException e){
    }
    controladorusuario cc = new controladorusuario();
    if(cc.eliminarusuario(idusuario)){
        response.sendRedirect("usuarios.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>

