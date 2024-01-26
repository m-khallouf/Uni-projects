package strukturen3;
enum AdressTyp {PRIVAT, GESCHAEFTLICH};

public class Adresse {
    private AdressTyp adresstyp;
    private String name;
    private String firstName;
    private String street;
    private String houseNumber;
    private String zipCode;
    private String city;

    public Adresse(AdressTyp adresstyp, String name, String firstName, String street, String houseNumber,
                   String zipCode, String city) {
        this.adresstyp = adresstyp;
        this.name = name;
        this.firstName = firstName;
        this.street = street;
        this.houseNumber = houseNumber;
        this.zipCode = zipCode;
        this.city = city;
    }

    public Adresse() { }

    public String toString() {
        if (adresstyp == AdressTyp.PRIVAT){
            return "Private Adressen\n ----------------" + AdressTyp.PRIVAT + "\n" +
                    name + firstName + "\n" + street + houseNumber + "\n" + zipCode + city;
        } else {
            return "Geschäftliche Adressen\n ----------------" + AdressTyp.GESCHAEFTLICH + "\n" +
                    name + firstName + "\n" + street + houseNumber + "\n" + zipCode + city;
        }
    }
}

