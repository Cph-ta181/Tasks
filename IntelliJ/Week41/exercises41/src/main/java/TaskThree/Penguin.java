package TaskThree;

public class Penguin extends Animal {

    public Penguin(int numberOfLegs) {
        super(numberOfLegs);
    }

    @Override
    public void makeSound() {
        System.out.println("Penguin goes pip pip");
    }

}
