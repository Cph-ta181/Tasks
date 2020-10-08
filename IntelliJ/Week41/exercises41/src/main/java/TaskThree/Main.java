package TaskThree;

public class Main {
    public static void main(String[] args){
        Zoo myZoo = new Zoo();
        myZoo.addAnimal(new Penguin(2));
        myZoo.addAnimal(new Dog(4));
        myZoo.addAnimal(new Lion(4));

        myZoo.makeAllSounds();
        myZoo.printNumberOfLegs();
    }
}
