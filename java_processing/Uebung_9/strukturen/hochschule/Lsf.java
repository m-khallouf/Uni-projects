package hochschule;

import strukturen.Adresse;
import strukturen.Adresstyp;

public class Lsf {
    public static void main(String[] args) {
        Adresse[] db_adressen1 = new Adresse[7];
        db_adressen1[0] = new Adresse(Adresstyp.GESCHÄFTLICH, "Gurn", "Michael", "Lazarettstr.", "1", "88250", "Weingarten");
        db_adressen1[1] = new Adresse(Adresstyp.PRIVAT, "Gurn", "Michael", "Heidekrautweg", "11", "88410", "Bad Wurzach");
        db_adressen1[2] = new Adresse(Adresstyp.GESCHÄFTLICH, "Friedrich", "Michael", "Lazarettstr.", "1", "88250", "Weingarten");
        db_adressen1[3] = new Adresse(Adresstyp.GESCHÄFTLICH, "Lazarettstr.", "1", "88250", "Weingarten");
        db_adressen1[4] = new Adresse(Adresstyp.GESCHÄFTLICH, "Lazar", "Christian", "Lazarettstr.", "1", "88250", "Weingarten");
        db_adressen1[5] = new Adresse(Adresstyp.GESCHÄFTLICH, "Mutschler", "Bela", "Lazarettstr.", "1", "88250", "Weingarten");
        db_adressen1[6] = new Adresse(Adresstyp.GESCHÄFTLICH, "Reichle", "Heidi", "Lazarettstr.", "1", "88250", "Weingarten");

        Adresse[] db_adressen2 = new Adresse[2];
        db_adressen2[0] = new Adresse();
        db_adressen2[0].adresstyp = AdressTyp.GESCHAEFTLICH;
        db_adressen2[0].name = "Gurn";
        db_adressen2[0].firstName = "Michael";
        db_adressen2[0].street = "Lazerettstrasse ";
        db_adressen2[0].houseNumber = "1";
        db_adressen2[0].zipCode = "88255";
        db_adressen2[0].city = "Weingarten";

        db_adressen2[1] = new Adresse();
        db_adressen2[1].adresstyp = AdressTyp.PRIVAT;
        db_adressen2[1].name = "Gurn";
        db_adressen2[1].firstName = "Michael";
        db_adressen2[1].street = "Heiderkrautweg ";
        db_adressen2[1].houseNumber = "11;
        db_adressen2[1].zipCode = "88410";
        db_adressen2[1].city = "Bad Wurzach";

        Adresse[] db_adressen5 = {
                new Adresse("M", "Gurn", "Michael", "V209", "4711", "9878", "AKADEMISCHEMITARBEITER"),
                new Adresse("M", "Friedrich", "Michael", "V309", "42", "9840", "PROFESSOR"),
                new Adresse("M", "Lazar", "Christian", "V111.", "0815", "9892", "PROFESSOR"),
                new Adresse("M", "Mutschler.", "Bela", "V210", "1234", "PROFESSOR"),
                new Adresse("W", "Reichle", "Heidi", "V306.", "4321", "9924", "PROFESSORIN"),
        };

        printAdressList(db_adressen1, Adresstyp.PRIVAT);
        printAdressList(db_adressen1, Adresstyp.GESCHAEFTLICH);
    }
    
    public static void printAdressList(Adresse[] adressen, Adresstyp adresstyp) {
        for (Adresse adresse : adressen) {
            if (adresse.adresstyp == adresstyp) {
                System.out.println(adresse.toString());
            }
        }
    }
    //Überladene print Methode
    public static void printAdressList(Adresse[] adressen) {
        for (Adresse adresse : adressen) {
            System.out.println(adresse);
        }
    }
}

