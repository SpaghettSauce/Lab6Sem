import java.util.HashSet;

public class Lab2_1 
{
    public static String findLongestUniqueSubstring(String s) 
    {
        int left = 0, right = 0;
        int maxLength = 0, start = 0;
        HashSet<Character> uniqueChars = new HashSet<>();
        
        while (right < s.length()) {
            char currentChar = s.charAt(right);
            
            while (uniqueChars.contains(currentChar)) 
            {
                uniqueChars.remove(s.charAt(left));
                left++;
            }
            
            uniqueChars.add(currentChar);
            
            if (right - left + 1 > maxLength) 
            {
                maxLength = right - left + 1;
                start = left;
            }
            
            right++;
        }
        
        return s.substring(start, start + maxLength);
    }

    public static void main(String[] args) 
    {
        String string = "abbbbbbbbbacc";
        System.out.println( findLongestUniqueSubstring(string));
    }
}
