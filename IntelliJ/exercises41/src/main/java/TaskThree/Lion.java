package TaskThree;

public class Lion extends Animal{

    public Lion(int numberOfLegs) {
        super(numberOfLegs);
    }

    @Override
    public void makeSound(){
        System.out.println("Lion goes grrrr");
    }
}
