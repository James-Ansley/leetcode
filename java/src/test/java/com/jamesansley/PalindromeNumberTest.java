package com.jamesansley;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class PalindromeNumberTest {
    @Test
    public void exampleCases() {
        PalindromeNumber solution = new PalindromeNumber();

        assertTrue(solution.isPalindrome(121));
        assertFalse(solution.isPalindrome(-121));
        assertFalse(solution.isPalindrome(10));
    }

    @Test
    public void extraCases() {
        PalindromeNumber solution = new PalindromeNumber();

        assertTrue(solution.isPalindrome(1221));
        assertTrue(solution.isPalindrome(0));
        assertTrue(solution.isPalindrome(-0));
    }
}
