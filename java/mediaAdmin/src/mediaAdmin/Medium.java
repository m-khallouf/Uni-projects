/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mediaAdmin;

public class Medium {

    int id;
    String title;

    // define a constructor that sets the values of 
    // the members id and title
    Medium(int id_, String title_) {
        this.id = id_;
        this.title = title_;
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
        // Otherwise, it returns false.

        // Hint: the clearest way is to test for inequality: 
        if (otherMedium == null || !(otherMedium instanceof Medium)) {
            return false;
        }

        // Compare the values of id and title
        if (this.id != otherMedium.id) {
            return false;
        }

        if (!this.title.equals(otherMedium.title)) {
            return false;
        }

        // Objects are equal
        return true;
    }
}