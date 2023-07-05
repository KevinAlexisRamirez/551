package optionpane;

import javax.swing.JOptionPane; 

public class excepcionesTryCatch {

    public static void main(String[] args) {

   int x,y; 

   try{
   x= Integer.parseInt(JOptionPane.showInputDialog(null, "Ingresa numero 1:", "solicite datos",3)); 
    }catch (NumberFormatException n) {
        System.out.println(n.getMessage()+"no es un numero entero");
        }
    }
}