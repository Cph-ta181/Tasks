import java.util.Random;

public class SubQuiz extends Quiz{
    private String titel;
    private int number1;
    private int number2;

    public SubQuiz(String titel){
        super(titel);
    }

    private void displayExercise() {
        System.out.println("What is "+number1+" - "+number2);
    }

    private  int calculateResult() {
        return number1-number2;
    }

    private void generateRandomNumbers() {
        Random r = new Random();
        int n1 = r.nextInt(10)+1;//8
        int  n2 = r.nextInt(10)+1;//9
        //Hvis det er n2 der er størst, så skal number1 sættes til n2
        if(n2 > n1) {
            number1 = n2;
            number2 = n1;
        }else{ //og omvendt
            number1 = n1;
            number2 = n2;
        }
    }
}
