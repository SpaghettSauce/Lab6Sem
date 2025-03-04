public class Lab2_6 
{
    public static int sumMatrix(int[][] matrix) 
    {
        int sum = 0;
        for (int[] row : matrix) 
        {
            for (int num : row)
             {
                sum += num;
            }
        }
        return sum;
    }
    
    public static void main(String[] args) 
    {
        int[][] matrix = {
            {3, 65, 5},
            {43, 0, 2},
            {6, 12, 5}
        };
        System.out.println(sumMatrix(matrix));
    }
}
