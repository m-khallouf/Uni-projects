/**
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mediaadmin;

public class Medium {

    int id;
    String title;

    // define a constructor that sets the values of
    // the members id and title
    Medium(int id, String title) {
        this.id = id;
        this.title = title;
    }

    void print() {
        // print out the id and the title
        System.out.print(" Medium, id: " + id);
        System.out.print(", title: " + title);
    }

    boolean equals(Medium otherMedium){
        // This method returns true if the members
        // of this object hold the same values
        // as the members of the other object.
        // Otherwise it returns false.

        // Hint: the clearest way is to test for inequality:
        if (this.id != otherMedium.id) {
            return false;
        }

        if (!this.title.equals(otherMedium.title)) {
            return false;
        }

        return true;
    }
}