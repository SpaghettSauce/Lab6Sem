import java.util.Scanner;

public class lab5 {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int n = s.nextInt();

        if (n < 100 || n > 999) {
            System.out.println("Число должно быть трехзначным!");
            return;
        }

        int a = n / 100;
        int b = (n / 10) % 10;
        int c = n % 10;

        int sum = a + b + c;
        int prod = a * b * c;

        boolean ok = (sum % 2 == 0) && (prod % 2 == 0);

        System.out.println(ok ? 
            "Число является дважды четным." : 
            "Число не является дважды четным.");
        
        s.close();
    }
}