public class Elbil extends Bil{
    private double batterikapacitetKWh;
    private double maxKm;
    private double whPrKm;

    public Elbil(int regNr, String mærke, String model, int årgang, int antalDøre, double batterikapacitetKWh, double maxKm, double whPrKm) {
        super(regNr, mærke, model, årgang, antalDøre);
        this.batterikapacitetKWh = batterikapacitetKWh;
        this.maxKm = maxKm;
        this.whPrKm = whPrKm;
    }

    @Override
    public double beregnGrønEjerafgift() {
        double kmPrL = 100/(this.whPrKm/91.25);
        if (kmPrL >= 20){
            return 330;
        }
        else if(kmPrL >= 15){
            return 1050;
        }
        else if (kmPrL >= 10){
            return 2340;
        }
        else if (kmPrL >= 5){
            return 5500;
        }
        else{
            return 10470;
        }
    }

    @Override
    public String toString(){
        return "Make:" + this.getMærke()+ " Model:" +this.getModel() + " Year:" + this.getÅrgang() + " RegNr: " + this.getRegNr();
    }


    public double getBatterikapacitetKWh() {
        return batterikapacitetKWh;
    }

    public void setBatterikapacitetKWh(float batterikapacitetKWh) {
        this.batterikapacitetKWh = batterikapacitetKWh;
    }

    public double getMaxKm() {
        return maxKm;
    }

    public void setMaxKm(float maxKm) {
        this.maxKm = maxKm;
    }

    public double getWhPrKm() {
        return whPrKm;
    }

    public void setWhPrKm(float whPrKm) {
        this.whPrKm = whPrKm;
    }
}
