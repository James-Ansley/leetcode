package com.jamesansley;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class RomanToIntegerTest {
    @Test
    public void exampleCases() {
        RomanToInteger solution = new RomanToInteger();

        assertEquals(3, solution.romanToInt("III"));
        assertEquals(58, solution.romanToInt("LVIII"));
        assertEquals(1994, solution.romanToInt("MCMXCIV"));
    }
}
