
import java.lang.Math;

public class Point {
    private double xCoordinate;
    private double yCoordinate;
    private double zCoordinate;

    public Point(double xCoordinate, double yCoordinate, double zCoordinate) {
        this.xCoordinate = xCoordinate;
        this.yCoordinate = yCoordinate;
        this.zCoordinate = zCoordinate;
    }

    public double distance(Point otherPoint) {
        double dx = this.xCoordinate - otherPoint.xCoordinate;
        double dy = this.yCoordinate - otherPoint.yCoordinate;
        double dz = this.zCoordinate - otherPoint.zCoordinate;
        double distanceSquared = dx * dx + dy * dy + dz * dz;
        double distance = Math.sqrt(distanceSquared);
        return distance;
    }

    public void print() {
        System.out.println("P(" + xCoordinate + ", " + yCoordinate + ", " + zCoordinate + ")");
    }
}