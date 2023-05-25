

package com.mycompany._v5trifiv;

import java.util.Scanner;
import Variables.*;
public class TRIFIV {

     public static void main(String[] args) {
         Scanner entrada=new Scanner(System.in);
        int numero;
        System.out.println("introduce numero :");
        numero=entrada.nextInt();
          variablesmultiplo variableMultiplo=new variablesmultiplo();
        variableMultiplo.retornanumero(numero);
        System.out.println( variableMultiplo.retornanumero(numero));
        
    }
    
}
