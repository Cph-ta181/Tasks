package TeaskOne;

public class Main {
    public static void main(String[] args){
        Driver driver = new Driver("Thomas", 20);
        Car car = new Car("Alfa Romeo", "156" , 2000, "2.0");
        car.setDriver(driver);

        System.out.println(car.toString() + car.getDriver());

        Car car2 = new Car("Fiat", "Punto", 2003, "1.3");
        car.setDriver(driver);

        System.out.println(car2.toString() + car2.getDriver());
    }
}
