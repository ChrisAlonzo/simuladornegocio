
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="controller.controladortipousuario" %>
<%
    int idtipousuario = 0;
    try {
        idtipousuario = Integer.parseInt(request.getParameter("idtipousuario"));

    } catch (NumberFormatException e){
    }
    controladortipousuario cc = new controladortipousuario();
    if(cc.eliminartipousuario(idtipousuario)){
        response.sendRedirect("tipousuarios.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
