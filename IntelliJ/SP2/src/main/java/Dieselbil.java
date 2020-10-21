public class Dieselbil extends Bil{
    private boolean harPartikelfilter;
    private double kmPrL;

    public Dieselbil(int regNr, String mærke, String model, int årgang, int antalDøre, boolean harPartikelfilter, double kmPrL) {
        super(regNr, mærke, model, årgang, antalDøre);
        this.harPartikelfilter = harPartikelfilter;
        this.kmPrL = kmPrL;
    }

    @Override
    public double beregnGrønEjerafgift() {
        int partikeludledningsafgift = 1000;
        if (this.harPartikelfilter){
            partikeludledningsafgift = 0;
        }

        if (this.kmPrL >= 20){
            return 330 + 130 + partikeludledningsafgift;
        }
        else if(this.kmPrL >= 15){
            return 1050 + 1390 + partikeludledningsafgift;
        }
        else if (this.kmPrL >= 10){
            return 2340 + 1850 + partikeludledningsafgift;
        }
        else if (this.kmPrL >= 5){
            return 5500 + 2770 + partikeludledningsafgift;
        }
        else{
            return 10470 + 15260 + partikeludledningsafgift;
        }
    }

    @Override
    public String toString(){
        return "Make:" + this.getMærke()+ " Model:" +this.getModel() + " Year:" + this.getÅrgang() + " RegNr: " + this.getRegNr();
    }

    public boolean isHarPartikelfilter() {
        return harPartikelfilter;
    }

    public void setHarPartikelfilter(boolean harPartikelfilter) {
        this.harPartikelfilter = harPartikelfilter;
    }

    public double getKmPrL() {
        return kmPrL;
    }

    public void setKmPrL(float kmPrL) {
        this.kmPrL = kmPrL;
    }
}
