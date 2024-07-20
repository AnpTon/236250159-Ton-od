import java.util.Scanner;
public class JavaDemo {
    public static void main(String[] args){
        System.out.println("Yellow");
        Scanner Co = new Scanner(System.in);
        System.out.println("Is the above yellow?(Y/N)");
        String Ans = Co.nextLine();

        if ("Y".equals(Ans)){
            System.out.println("Perhaps?");

        }
        else if ("N".equals(Ans)){
            System.out.println("Is that so...");
        }
        else {
            System.out.println("Potentially...");
        }
    }
}