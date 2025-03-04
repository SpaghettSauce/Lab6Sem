import java.util.Arrays;

public class Lab2_5 {
    public static int[] findPair(int[] nums, int target) {
        for (int i = 0; i < nums.length; i++) 
        {
            for (int j = i + 1; j < nums.length; j++) 
            {
                if (nums[i] + nums[j] == target)
                 {
                    return new int[]{nums[i], nums[j]};
                }
            }
        }
        return null;
    }
    
    public static void main(String[] args) {
        int[] nums = {3, 5, 12, 16};
        int target = 9;
        int[] result = findPair(nums, target);
        
        System.out.println(result != null ? Arrays.toString(result) : "Нету пары :(");
    }
}
