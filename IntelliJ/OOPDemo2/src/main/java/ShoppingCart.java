public class ShoppingCart {
    private int numberOfItems;
    private Item[] items;

    public ShoppingCart(int cartSize){
        items = new Item[cartSize];
        numberOfItems = 0;
    }

    public void addItem(Item itemToAdd){
        items[numberOfItems] = itemToAdd;
        numberOfItems++;
    }

    public float priceSum(){
        float sum = 0;
        for (int x = 0; x<numberOfItems;x++){
                sum += items[x].getPrice();
        }
        return sum;
    }

    @Override
    public String toString() {
        String itemList = "";
        for (int x = 0; x<numberOfItems ; x++){
            itemList += "\n" + items[x];
        }
        return "Number of items: " + numberOfItems + "\n" +  itemList + "\nTotal Price: " + priceSum();
    }
}
