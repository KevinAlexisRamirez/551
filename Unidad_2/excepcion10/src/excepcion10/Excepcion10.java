
package excepcion10;


public class Excepcion10 {

  
   public static void main(String[] args) {
        try {
            Object obj = new Integer(10);
            String str = (String) obj;
        } catch (ClassCastException e) {
            System.out.println("Casteo de clase no válido: " + e.getMessage());
        }
    }
}