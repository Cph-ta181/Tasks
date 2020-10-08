package TaskThree;

public class Animal implements AnimalSound{
    private int numberOfLegs;

    public Animal(int numberOfLegs) {
        this.numberOfLegs = numberOfLegs;
    }

    public void makeSound() {
        System.out.println("Undefined animal makes no sound.");
    }

    public int getNumberOfLegs() {
        return numberOfLegs;
    }
}
