public class Main {
    public static void main(String[] args){
        Garage minGarage = new Garage("minGarage");
        minGarage.tilføjBil(new Benzinbil(000123, "Alfa Romeo", "156", 2000, 4, 100, 12.7));
        minGarage.tilføjBil(new Dieselbil(000124, "Kia", "Ceed", 2012, 5, true, 22.5));
        minGarage.tilføjBil(new Elbil(000125, "Tesla", "3", 2018, 4, 65, 580, 0.11));
        System.out.println(minGarage);
        System.out.println(minGarage.beregnGrønAfgiftForBilpark() + " DKK");
    }
}
