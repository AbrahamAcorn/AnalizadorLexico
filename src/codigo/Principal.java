/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

import java.io.File;

/**
 *
 * @author Charly Ponce
 */
public class Principal {
    public static void main(String[] args) {
        //se debe especificar la ruta para el lexer en este caso es la siguiente:
        String ruta = "C:/Users/Abraham/Documents/NetBeansProjects/AnalizadorLexico/src/codigo/Lexer.flex";
        generarLexer(ruta);
    }
    public static void generarLexer(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}
