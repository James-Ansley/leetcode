package com.jamesansley;

public class PalindromeNumber {
    public boolean isPalindrome(int number) {
        if (0 <= number && number < 10) {
            return true;
        } else if (number < 0 || number % 10 == 0) {
            return false;
        } else {
            int reversed = 0;
            while (number > reversed) {
                reversed = reversed * 10 + number % 10;
                number = number / 10;
            }
            return number == reversed || number == reversed / 10;
        }
    }
}
