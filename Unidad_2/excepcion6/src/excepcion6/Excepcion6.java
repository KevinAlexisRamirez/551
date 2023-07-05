
package excepcion6;


public class Excepcion6 {

 
    public static void main(String[] args) {
         Excepcion6 a = new Excepcion6();
         a.method1();
   }

   public void method1(){
      Excepcion6 b = null;
       b.method2();

   }

    public void method2(){
        System.out.println("Hello!!");
    }
}