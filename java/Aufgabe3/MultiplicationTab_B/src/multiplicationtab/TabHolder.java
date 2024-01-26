
package multiplicationtab;

public class TabHolder {

    private int[][] table;

    private TabHolder() { }

    TabHolder(int row, int column) {
        // create new two-dimensional array
        table = new int[row][column];

    }

    int getTabValue(int row, int column) {
        return table[row][column];
    }

    void setTabValue(int value, int row, int column) {
        table[row][column] = value;
    }

    void printTab() {
        for (byte i = 0; i < table.length; i++) {
            System.out.print('>');
            for (byte j = 0; j < table[i].length; j++) {
                System.out.printf(" %4d", table[i][j]);// print value from table
            }
            System.out.println();
        }
        System.out.println();
    }

}
