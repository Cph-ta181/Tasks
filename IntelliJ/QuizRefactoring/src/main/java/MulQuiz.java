import java.util.Random;

public class MulQuiz extends Quiz{
    private int number1;
    private int number2;

    public MulQuiz(String titel) {
        super(titel);
    }

    private void displayExercise() {
        System.out.println("What is "+number1+" * "+number2);
    }

    private int calculateResult() {
        return number1*number2;
    }

    private void generateRandomNumbers() {
        Random r = new Random();
        int n1 = r.nextInt(10)+1;//8
        int  n2 = r.nextInt(10)+1;//9
    }
}
