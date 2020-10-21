public class Benzinbil extends Bil{
    private double oktantal;
    private double kmPrL;

    public Benzinbil(int regNr, String mærke, String model, int årgang, int antalDøre, double oktantal, double kmPrL) {
        super(regNr, mærke, model, årgang, antalDøre);
        this.oktantal = oktantal;
        this.kmPrL = kmPrL;
    }

    @Override
    public double beregnGrønEjerafgift() {
        if (this.kmPrL >= 20){
            return 330;
        }
        else if(this.kmPrL >= 15){
            return 1050;
        }
        else if (this.kmPrL >= 10){
            return 2340;
        }
        else if (this.kmPrL >= 5){
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

    public double getOktantal() {
        return oktantal;
    }

    public void setOktantal(float oktantal) {
        this.oktantal = oktantal;
    }

    public double getKmPrL() {
        return kmPrL;
    }

    public void setKmPrL(float kmPrL) {
        this.kmPrL = kmPrL;
    }
}
