public class Item {
    private float price;
    private String size;
    private String name;
    private String category;

    public Item(float price, String name){
        this.price = price;
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public String getSize() {
        return size;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    @Override
    public String toString() {
        return name + ": " + price;
    }
}
