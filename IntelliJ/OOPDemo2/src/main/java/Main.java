public class Main {
    public static void main(String[] args){
        Customer[] customers = new Customer[10];
        customers[0] = new Customer("Jens Jensen", "JensJensen@email.com");
        customers[1] = new Customer("Hans", "hans@email.com");


        Item tandbørste = new Item(20, "Tandbørste");
        Item PS4 = new Item(1500, "PS4");
        Item tandpasta = new Item(20, "tandpasta");
        Item stol = new Item(400, "stol");

        customers[0].addItemToCart(tandbørste);
        customers[0].addItemToCart(PS4);

        System.out.println(customers[0].printCart());


        System.out.println("Customer credits: " +customers[0].getCustomerCredits());
        customers[0].buyCart();
        System.out.println("Customer credits: " +customers[0].getCustomerCredits());
        System.out.println(customers[1].printCart());

    }
}
