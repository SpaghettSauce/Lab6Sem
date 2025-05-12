import java.util.Scanner;

public class lab3 {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        int x = s.nextInt();
        int y = s.nextInt();

        int curX = 0, curY = 0, steps = 0;

        while (true) {
            if (!s.hasNext()) continue; 

            String dir = s.next();

            if (dir.equals("стоп")) break;

            int dist = s.nextInt();

            switch (dir) {
                case "север": curY += dist; break;
                case "юг": curY -= dist; break;
                case "запад": curX -= dist; break;
                case "восток": curX += dist; break;
            }

            steps++;

            if (curX == x && curY == y) break;
        }

        System.out.println(steps);
        s.close();
    }
}