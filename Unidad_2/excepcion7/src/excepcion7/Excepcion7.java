
package excepcion7;
import java.io.*;

public class Excepcion7 {
    public static void main(String[] args) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader("archivo.txt"));
            String line = reader.readLine();
            System.out.println("Contenido del archivo: " + line);
            reader.close();
        } catch (IOException e) {
            System.out.println("Se produjo un error de E/S: " + e.getMessage());
        }
    }
}