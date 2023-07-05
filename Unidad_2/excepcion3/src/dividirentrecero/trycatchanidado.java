
package dividirentrecero;
import javax.swing.JOptionPane; 
public class trycatchanidado {

    public static void main(String[] args) {
        int x,y; 
         try{
   x= Integer.parseInt(JOptionPane.showInputDialog(null, "Ingresa numero 1:", "solicite datos",3)); 
   y= Integer.parseInt(JOptionPane.showInputDialog(null, "Ingresa numero 2:", "solicite datos",3)); 
   JOptionPane.showMessageDialog(null, "La division de " + x +" / "+ y +" es "+ (x/y), " Mostrando resultado ",1); 
    }catch (NumberFormatException n) {
        System.out.println(n.getMessage()+"no es un numero entero");

    }catch (ArithmeticException n){
      System.out.println(n.getMessage()+"no se puede dividir entre cero");  
    }
    
}
}
