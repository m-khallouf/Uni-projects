public class Comp2List {
    String name;
    int value;
    Comp2List next;

    Comp2List(String name_, int value_) {
        name = name_;
        value = value_;
    }

    public static void main(String[] args) {
        Comp2List l_1 = new Comp2List("Alice", 11);
        Comp2List l_2 = new Comp2List("Bob", 22);
        Comp2List l_3 = new Comp2List("Claire", 33);
        Comp2List l_4 = new Comp2List("Don", 44);
        Comp2List l_5 = new Comp2List("Ellen", 55);

        // Verkettung der Objekte
        l_3.next = l_1;
        l_1.next = l_4;
        l_4.next = null;

        printAll(l_3);


        // 1-5
        l_1.next = l_2;
        l_2.next = l_3;
        l_3.next = l_4;
        l_4.next = l_5;
        l_1.next = null;


        printAll(l_1);

        l_1.next = null;
        printAll(l_1);


    }

    static void printAll(Comp2List compObject) {
        System.out.println("list of objects: ");
        while (compObject != null) {
            System.out.print(compObject.name + ", ");
            compObject = compObject.next;
        }
        System.out.println();
        System.out.println("---------");
    }
}
