public class Customer {
    private String fullname;
    private String email;
    private ShoppingCart cart;
    private  int customerCredits;

    public Customer(String fullname, String email){
        this.fullname = fullname;
        this.email = email;
        cart = new ShoppingCart(10);
    }

    public String getFullname(){
        return fullname;
    }
    public String getEmail(){
        return email;
    }

    public int getCustomerCredits() {
        return customerCredits;
    }

    public void buyCart(){
        customerCredits += cart.sum()/10;
        cart = new ShoppingCart(10);
    }

    public void addItemToCart(Item item){
        cart.addItem(item);
    }

    public String printCart(){
        return cart.toString();
    }


}
