package com.jamesansley;

public class RomanToInteger {
    public int romanToInt(String s) {
        int total = 0;
        for (int i = 0; i < s.length() - 1; i++) {
            int value = charValue(s.charAt(i));
            int next = charValue(s.charAt(i + 1));
            if (value < next) {
                total -= value;
            } else {
                total += value;
            }
        }
        total += charValue(s.charAt(s.length() - 1));
        return total;
    }

    private int charValue(char c) {
        return switch (c) {
            case 'I' -> 1;
            case 'V' -> 5;
            case 'X' -> 10;
            case 'L' -> 50;
            case 'C' -> 100;
            case 'D' -> 500;
            case 'M' -> 1000;
            default -> throw new RuntimeException(
                    "Unrecognised numeral: `%s`".formatted(c)
            );
        };
    }
}
