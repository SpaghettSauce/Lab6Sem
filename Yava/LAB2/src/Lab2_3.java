public class Lab2_3 {
    public static int findMaxSubarraySum(int[] nums)
     {
        int maxSum = nums[0], sum = nums[0];
        
        for (int i = 1; i < nums.length; i++) 
        {
            sum = Math.max(nums[i], sum + nums[i]);
            maxSum = Math.max(maxSum, sum);
        }
        
        return maxSum;
    }
    
    public static void main(String[] args) 
    {
        int[] nums = {-2, 1, -3, 4, -1, 2, 1, -5, 4};
        System.out.println(findMaxSubarraySum(nums));
    }
}
