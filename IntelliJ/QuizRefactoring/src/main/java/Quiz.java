import java.util.Random;
import java.util.Scanner;


/**
 *
 * Quiz than can subtract numbers Code structured with methods
 *

 Pseudo-code:


 // Generate 2 random numbers between 1-10
 // Swop numbers if number1 is smaller than number2
 // Print subtraction exercise to screen
 // Read answer from keyboard
 // Calculate right answer
 // Check answer and output result on screen


 Finish the code by writing the methods that are being called from main()
 * Hint: some variables must be be declared OUTSIDE main in order to be
 * used by different methods (class variables)
 *
 */
public class Quiz {
    //number1 er altid det største tal af de to
    private int number1;
    private int number2;
    private int correctAnswer;
    private String titel;

    public Quiz(String titel){
        this.titel = titel;
    }

    private void play(){
        int answer = promptForAnswer();
        displayResult(answer, correctAnswer);
    }
    private void displayResult(int answer, int correct) {
        if(answer == correct){
            System.out.println("JA! Det var rigtigt");
        }else{
            System.out.println("NEJ. Det var forkert. Prøv igen.");
            play();
        }
    }

    private static int promptForAnswer() {
        Scanner scan = new Scanner(System.in);
        int userinput = scan.nextInt();
        return userinput;
    }


    private abstract void generateRandomNumbers()
}



