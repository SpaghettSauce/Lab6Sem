import java.util.Arrays;

public class Lab2_8 {
    public static int[][] rotateMatrix(int[][] matrix)
     {
        int n = matrix.length;
        int[][] rotated = new int[n][n];
        
        for (int i = 0; i < n; i++) 
        {
            for (int j = 0; j < n; j++) 
            {
                rotated[n - 1 - j][i] = matrix[i][j];
            }
        }
        
        return rotated;
    }
    
    public static void main(String[] args) 
    {
        int[][] matrix = {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
        };
        
        int[][] rotatedMatrix = rotateMatrix(matrix);
        
        for (int[] row : rotatedMatrix) 
        {
            System.out.println(Arrays.toString(row));
        }
    }
}
