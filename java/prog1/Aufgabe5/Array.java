/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author martin
 */
public class Array {

    public static void main(String[] args) {
        int[] numbers = {4, -7, 9, 3, -1, 6, -2, 5, 8};
        int[] values = {-9, 0, -2, 4, 5, -7, -3, 6, 1, -8};

        System.out.println("--- numbers ---");
        testSuit(numbers);

        System.out.println("--- values ---");
        testSuit(values);

    }

    static void testSuit(int[] nums) {
        printIntArray(nums);
        int result = maxElement(nums);
        System.out.println("max: " + result);
        double meanVal = mean(nums);
        System.out.printf("meanVal: %5.2f \n", meanVal);

        separateEvenAndOdd(nums);
        printIntArray(nums);

        removeNegative(nums);
        printIntArray(nums);
        return;
    }

    static int maxElement(int[] nums) {
        int max = nums[0];
        for (int i = 1; i < nums.length; i++) {
            if (max < nums[i]) {
                max = nums[i];
            }
        }
        return max;
    }

    static double mean(int[] nums) {
        int positiveCount = 0;
        int sum = 0;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] >= 0) {
                nums[positiveCount] = nums[i];
                positiveCount++;
                sum += nums[i];
            }
        }

        for (int i = positiveCount; i < nums.length; i++) {
            nums[i] = 0;
        }

        return (double) sum / positiveCount;
    }

    public static void separateEvenAndOdd(int[] array) {
        int left = 0;
        int right = array.length - 1;

        while (left < right) {
            while (array[left] % 2 == 0 && array[left] != 0 && left < right) {
                left++;
            }

            while ((array[right] % 2 != 0 || array[right] == 0) && left < right) {
                right--;
            }

            if (left < right) {
                int temp = array[left];
                array[left] = array[right];
                array[right] = temp;
            }
        }
    }



    static void removeNegative(int[] nums) {
        int negativeElement = -1;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == negativeElement) {
                nums[i] = -nums[i];
            }
        }
        return;
    }

    static void printIntArray(int[] nums) {
        System.out.print("Array: ");
        for (int i = 0; i < nums.length; i = i + 1) {
            System.out.print(nums[i] + ", ");
        }
        System.out.println();
        return;
    }

}
