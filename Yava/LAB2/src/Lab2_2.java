import java.util.Arrays;

public class Lab2_2 
{
    public static int[] mergeSortedArrays(int[] arr1, int[] arr2) 
    {
        int i = 0, j = 0, k = 0;
        int[] array = new int[arr1.length + arr2.length];
        
        while (i < arr1.length && j < arr2.length) 
        {
            if (arr1[i] < arr2[j]) { 
                array[k++] = arr1[i++]; 
            } 
            else { 
                array[k++] = arr2[j++]; 
            }
        }
        
        while (i < arr1.length) 
        {
            array[k++] = arr1[i++];
        }
        
        while (j < arr2.length) 
        {
            array[k++] = arr2[j++];
        }
        
        return array;
    }

    public static void main(String[] args) {
        int[] arr1 = {1, 3, 5, 7};
        int[] arr2 = {2, 4, 6, 8};
        System.out.println(Arrays.toString(mergeSortedArrays(arr1, arr2)));
    }
}
