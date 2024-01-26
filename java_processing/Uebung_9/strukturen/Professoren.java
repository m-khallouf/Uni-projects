enum Geschlicht{MAENNLICH, WEIBLICH, DIVERS};
enum Personalstatus {AKADEMISCHE_MITARBEITERIN, AKADEMISCHER_MITARBEITER, BEAMTER, BEAMTIN, BIBLIOTHEKAR,
    BIBLIOTHEKARIN, KANZLER, KANZLERIN, LEHRBEAUFRAGTE, LEHRBEAUFRAGTER, PROFESSOR, PROFESSORIN, PROREKTOR, PROREKTORIN,
    REKTOR, REKTORIN, SACHBEARBEITER, SACHBEARBEITERIN, STUDENT, STUDENTIN, VERWALTUNGSANGESTELLTER,
    VERWALTUNGSANGESTELLTE}

public class Professoren {
    private Geschlicht geschlecht;
    private Personalstatus personalstatus;
    private String name;
    private String vorname;
    private String dienstzimmer;
    private int personalnummer;
    private int telefonnummer;

    public Professoren(Geschlicht geschlecht, Personalstatus personalstatus, String name, String vorname,
                       String dienstzimmer, int personalnummer, int telefonnummer) {
        this.geschlecht = geschlecht;
        this.personalstatus = personalstatus;
        this.name = name;
        this.vorname = vorname;
        this.dienstzimmer = dienstzimmer;
        this.personalnummer = personalnummer;
        this.telefonnummer = telefonnummer;
    }

    public Professoren() { }

    public String toString() {
        if (adresstyp == AdressTyp.PRIVAT){
            return "Professorenliste\n ----------------" + name + vorname + " - " + personalnummer + ", " +
                    personalstatus + " - " + geschlecht + dienstzimmer + " - " + telefonnummer;
    }
}
