

package com.mycompany._mayormenor;

import java.util.Scanner;
import CalculoEdad.*;
public class mayorMenor {

    public static void main(String[] args) {
        int edad;
                
        Scanner leer=new Scanner(System.in);
        System.out.println("Dame tu edad");
        edad= leer.nextInt(); 
        
        CalculoEdad varEdad=new CalculoEdad();
        varEdad.retornamultiplo(edad);
        System.out.println(varEdad.retornamultiplo(edad));
        
    }
}
