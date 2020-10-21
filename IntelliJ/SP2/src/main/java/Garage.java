import java.util.ArrayList;

public class Garage {
    private ArrayList<Bil> biler = new ArrayList<Bil>();
    private String navn;

    public Garage(String navn) {
        this.navn = navn;
    }

    public void tilføjBil(Bil bil){
        biler.add(bil);
    }

    public double beregnGrønAfgiftForBilpark(){
        double samletAfgift = 0;
        for(Bil bil : biler){
            samletAfgift += bil.beregnGrønEjerafgift();
        }
        return samletAfgift;
    }

    @Override
    public String toString() {
        String returnString = "";
        for (Bil bil: biler) {
            returnString += bil + "\n";
        }
        return returnString;
    }
}
