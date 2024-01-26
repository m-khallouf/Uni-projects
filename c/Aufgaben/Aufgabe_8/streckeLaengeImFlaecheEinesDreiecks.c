#include <stdio.h>
#include <math.h>

typedef struct Point {
    double xCoordinate;
    double yCoordinate;
    double zCoordinate;
}POINT;

typedef struct Triangle {
    POINT aCoordinate;
    POINT bCoordinate;
    POINT cCoordinate;
}TRIANGLE;


double distance(POINT a, POINT b) {
    double dx = a.xCoordinate - b.xCoordinate;
    double dy = a.yCoordinate - b.yCoordinate;
    double dz = a.zCoordinate - b.zCoordinate;
    return sqrt((dx * dx) + (dy * dy) + (dz * dz));
}

double area(TRIANGLE triangle) {
    double a = distance(triangle.aCoordinate, triangle.bCoordinate);
    double b = distance(triangle.bCoordinate, triangle.cCoordinate);
    double c = distance(triangle.cCoordinate, triangle.aCoordinate);

    double s = (a + b + c) / 2;
    double triangleArea = sqrt(s * (s - a) * (s - b) * (s - c));

    return triangleArea;
}

POINT readPoint() {
    POINT p;
    printf("X-coordinate: ");
    scanf("%lf", &p.xCoordinate);
    printf("Y-coordinate: ");
    scanf("%lf", &p.yCoordinate);
    printf("Z-coordinate: ");
    scanf("%lf", &p.zCoordinate);
    return p;
}

TRIANGLE readCoordinate() {
    TRIANGLE t;
    t.aCoordinate = readPoint();
    t.bCoordinate = readPoint();
    t.cCoordinate = readPoint();
    return t;
}

void printPoint(POINT p) {
    printf("P(%.2lf, %.2lf, %.2lf)\n", p.xCoordinate, p.yCoordinate, p.zCoordinate);
}

void printCoordinate(TRIANGLE t) {
    printf("A(%.2lf, %.2lf, %.2lf)\n", t.aCoordinate, t.bCoordinate, t.cCoordinate);
}

void run() {
    char choice;

    do {
        printf("Calculate Distance (d), area (a) or quit (q)? ");
        scanf(" %c", &choice);

        switch (choice) {
        case 'd':
            printf("Distance between two points\n");
            printf("Input point\n");
            POINT point1 = readPoint();
            printf("\n");

            printf("Input point\n");
            POINT point2 = readPoint();
            printf("\n");

            printPoint(point1);
            printPoint(point2);
            printf("\n");

            double dist = distance(point1, point2);
            printf("Distance: %f\n", dist);
            break;
        case 'a':
            printf("Area of a tringle\n");
            printf("Input points for the triangle:\n");
            TRIANGLE triangle = readCoordinate();


            printCoordinate(triangle);
            printf("\n");

            double triangleArea = area(triangle);
            printf("Triangle area: %.2lf\n", triangleArea);
            break;

        default:
            printf("Invalid choice\n");
            break;
        }

    } while (choice != 'q');
}

int main() {
    run();
    return 0;
}