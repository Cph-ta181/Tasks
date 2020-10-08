package TaskThree;

import java.util.ArrayList;

public class Zoo {
    private ArrayList<Animal> animals = new ArrayList<Animal>();


    public void makeAllSounds(){
        for (Animal animal : animals){
            animal.makeSound();
        }
    }

    public void addAnimal(Animal animalToAdd){
        animals.add(animalToAdd);
    }

    public void printNumberOfLegs(){
        int legCount = 0;
        for (Animal animal : animals){
            legCount += animal.getNumberOfLegs();
        }
        System.out.println("Total number of legs in my zoo: "+legCount);
    }
}
