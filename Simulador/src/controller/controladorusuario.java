package controller;

import include.tipousuario;
import include.usuario;
import models.modelotipousuario;
import models.modelousuario;
import java.util.ArrayList;

public class controladorusuario {


    public boolean agregarusuario(usuario usuario) {
        modelousuario usuario1 = new modelousuario();
        return usuario1.crearusuario(usuario);
    }

    public ArrayList<usuario> obtenerusuarios() {
        modelousuario usuario = new modelousuario();
        return usuario.obtenerusuarios();
    }
    public ArrayList<tipousuario> obtenertipousuariosFK(){
        modelousuario tipousuario = new modelousuario();
        return tipousuario.obtenertipousuariosFK();
    }

    public ArrayList<usuario> obtenerUsuario(int idusuario) {
        modelousuario Usuario = new modelousuario();
        return Usuario.obtenerUsuario(idusuario);
    }

    public boolean actualizarusuario(usuario usuario) {
        modelousuario usuario1 = new modelousuario();
        return usuario1.actualizarusuario(usuario);
    }

    public boolean eliminarusuario(int idusuario) {
        modelousuario usuario1 = new modelousuario();
        return usuario1.borrarusuario(idusuario);
    }

    public static void main(String[] args) {

        controladorusuario cc = new controladorusuario();
        //System.out.println(cc.agregarusuario(new usuario(4, "pedro", "trumpet", "2018-12-10", 1)));


        //Listar todos los elementos de la tabla
        /*ArrayList<usuario> usuarios = new ArrayList<usuario>();
        usuarios = cc.obtenerusuarios();

        for (int a = 0; a < usuarios.size(); a++) {
            System.out.println("idusuario: " + usuarios.get(a).getIdusuario());
            System.out.println("usuario:" + usuarios.get(a).getUsuario());
            System.out.println("password: " + usuarios.get(a).getPassword());
            System.out.println("last_access: " + usuarios.get(a).getLast_access());
            System.out.println("idtipousuario: " + usuarios.get(a).getIdtipousuario());
            System.out.println();*/

            //Listar un elemento de la tabla por su llave primaria

            /*ArrayList<usuario> usuario = new ArrayList<usuario>();
            usuario = cc.obtenerusuario(2);
            for (int b = 0; b < usuario.size(); b++) {
                System.out.println("idusuario: " + usuario.get(b).getIdusuario());
                System.out.println("usuario:" + usuario.get(b).getUsuario());
                System.out.println("password: " + usuario.get(b).getPassword());
                System.out.println("last_access: " + usuario.get(b).getLast_access());
                System.out.println("idtipousuario: " + usuario.get(b).getIdtipousuario());
                System.out.println();*/
            //Modificar un elemento
            System.out.println(cc.actualizarusuario(new usuario(1, "cris", "trompas", "2018-11-12", 7)));
            //Modificar un elemento
            //System.out.println(cc.eliminarusuario(4));
        }
    }