public class Auto {
    String marke;
    String typ;
    byte sitze;
    short ps;
    long km;

    public Auto(String marke, String typ, byte sitze, short ps, long km){
        this.marke = marke;
        this.typ = typ;
        this.sitze = sitze;
        this.ps = ps;
        this.km = km;
    }

    @Override
    public String toString(){
        return "Auto{" +
                "marke=" + marke +'\' +
                ", typ=" + typ + '\' +
                ", sitze=" + sitze + '\'
    }

}
