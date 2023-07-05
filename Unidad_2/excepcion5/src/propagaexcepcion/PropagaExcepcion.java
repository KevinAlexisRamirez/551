
package propagaexcepcion;

public class PropagaExcepcion {
    public static int elMetodo(int a, int b) throws ArithmeticException{
        if (b==0){
            throw new ArithmeticException();
        }
        int c = a/b; 
        return c; 
    }

    public static void main(String[] args) {
        try{
            int division = elMetodo(10, 0); 
            System.out.println("division");
            
        }catch(ArithmeticException e){
           System.out.println("Excepción aritmetica arrojada: ");
              e.printStackTrace();
        }
        
    }
    
}
