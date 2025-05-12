import java.util.Scanner;

public class lab4 {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int n = s.nextInt(), road = 0, max = 0;

        for (int i = 1; i <= n; i++) {
            int min = Integer.MAX_VALUE;
            for (int j = s.nextInt(); j > 0; j--)
                min = Math.min(min, s.nextInt());
            if (min > max) {
                max = min;
                road = i;
            }
        }
        System.out.println(road + " " + max);
        s.close();
    }
}
