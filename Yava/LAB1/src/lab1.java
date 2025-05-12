import java.util.Scanner;

public class lab1 {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int n = s.nextInt(), steps = 0;

        while (n != 1) {
            if (n % 2 == 0) n /= 2;
            else n = 3 * n + 1;
            steps++;
        }

        System.out.println(steps);
        s.close();
    }
}