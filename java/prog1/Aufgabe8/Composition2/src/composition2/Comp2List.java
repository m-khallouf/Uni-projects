package composition2;

public class Comp2List {
    String name;
    Comp2List next;
    int value;

    Comp2List(String name_, int value_) {
        name = name_;
        value_ = value_;

    }

    public static void main(String[] args) {
        Comp2List cl_1 = new Comp2List("Alice", 11);
        Comp2List cl_2 = new Comp2List("Bob", 22);
        Comp2List cl_3 = new Comp2List("Claire", 33);
        Comp2List cl_4 = new Comp2List("Don", 44);
        Comp2List cl_5 = new Comp2List("Ellen", 55);

        cl_3.next = cl_1;
        cl_1.next = cl_4;
        cl_4.next = null;
        // cl_4.next = cl_2;
        // cl_2.next = cl_5;
        printAll(cl_3);


        // build a chain of objects: Alice -> Bob -> Claire -> Don -> Ellen
        cl_1.next = cl_2;
        cl_2.next = cl_3;
        cl_3.next = cl_4;
        cl_4.next = cl_5;
        cl_5.next = null;
        printAll(cl_1);

        // build a chain of objects: Ellen -> Don -> Claire -> Bob -> Alice
        cl_1.next = null;
        printAll(cl_1);

        cl_5.next = cl_4;
        cl_4.next = cl_3;
        cl_3.next = cl_2;
        cl_2.next = cl_1;
        cl_1.next = null;
        printAll(cl_5);
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