public class StackObject {
    Object payload;
    Point next;
    private double xCoordinate;
    private double yCoordinate;
    private double zCoordinate;

    StackObject(Object anObject){
        payload = anObject;
    }

    public StackObject(double xCoordinate, double yCoordinate, double zCoordinate) {
        this.xCoordinate = xCoordinate;
        this.yCoordinate = yCoordinate;
        this.zCoordinate = zCoordinate;
    }

    public void print() {
        System.out.println("x= " + xCoordinate + " y= " + yCoordinate + " z= " + zCoordinate);
    }
}
