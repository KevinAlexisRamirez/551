
package excepcion8;
import java.io.*;
public class Excepcion8 {

    
   public static void main(String[] args) {
        try {
            File file = new File("archivo.txt");
            FileReader reader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(reader);
            String line = bufferedReader.readLine();
            System.out.println("Contenido del archivo: " + line);
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("Archivo no encontrado: " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Error de E/S: " + e.getMessage());
        }
    }
}