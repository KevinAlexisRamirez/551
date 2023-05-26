/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CalculoEdad;


public class CalculoEdad {
    public String retornamultiplo (int edad){
        if (edad <=17){
            return "Eres menor de edad";
        }
        if (edad >= 18){
            return "Eres mayor de edad";
        }
        return "ninguno";
    }
    
}
