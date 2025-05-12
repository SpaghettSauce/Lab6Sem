import java.util.Scanner;

public class lab2 {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int n = s.nextInt(), sum = 0, sign = 1;

        for (int i = 0; i < n; i++) {
            int num = s.nextInt();
            sum += sign * num;
            sign *= -1;
        }

        System.out.println(sum);
        s.close();
    }
}