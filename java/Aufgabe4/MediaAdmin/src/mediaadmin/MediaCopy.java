
package mediaadmin;

public class MediaCopy {

    Medium theMedium; // a reference to a medium
    // fill in the appropriate datatypes . . .
        int signature;  // a member that holds an integer value
        String location;   // a reference to a String object

    // define a constructor that sets the values of
    // the members signature and location
    MediaCopy(int signature, String location) {
        this.signature = signature;
        this.location = location;
    }

    void print() {
        // print out the signature and the location
        System.out.print(" Copy signature: " + signature);
        System.out.print(", location: " + location);

        // if this object contains reference to a medium-object (not null)
        // then call the print-method of the medium-object
        if (theMedium != null) {
            theMedium.print();
        }
        return;
    }

    boolean equals(MediaCopy otherCopy) {
        // This method returns true if the members
        // of this object contain the same values
        // as the members of the other object.
        // Otherwise it returns false.

        // Hint: the clearest way is to test for inequality:
        if (this.signature != otherCopy.signature) {
            return false;
        }

        // Hint 2: location is of type String.
        // compare two string with location.equals( . . . )
        if (!this.location.equals(otherCopy.location)) {
            return false;
        }

        // Also compare the referenced medium if present
        if (this.theMedium != null && otherCopy.theMedium != null) {
            if (!this.theMedium.equals(otherCopy.theMedium)) {
                return false;
            }
        } else if (this.theMedium != otherCopy.theMedium) {
            return false;
        }

        return true;
    }
}