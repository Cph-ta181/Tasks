import java.sql.SQLOutput;
import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);

        System.out.println("What is the current height of your grass?");
        int currentHeight = sc.nextInt();

        System.out.println("How high should the grass be before cutting?");
        int cutHeight = sc.nextInt();
        System.out.println("You should wait " + whenToCut(currentHeight, cutHeight) + " days before cutting your grass.");
    }

    public static int whenToCut(double currentHeight, double cutHeight){
        if (cutHeight < currentHeight){
            return 0;
        }
        return (int)Math.ceil((cutHeight-currentHeight)/0.8);
    }
}
