public class Point {
    private double xCoordinate;
    private double yCoordinate;
    private double zCoordinate;


    public Point(int xCoordinate, int yCoordinate, int zCoordinate) {
        this.xCoordinate = xCoordinate;
        this.yCoordinate = yCoordinate;
        this.zCoordinate = zCoordinate;
    }

    public void print() {
        System.out.println("x= " + xCoordinate + " y= " + yCoordinate + " z= " + zCoordinate);
    }
}