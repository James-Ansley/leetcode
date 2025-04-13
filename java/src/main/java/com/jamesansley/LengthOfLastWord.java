package com.jamesansley;

public class LengthOfLastWord {
    public int lengthOfLastWord(String s) {
        int stop = s.length() - 1;
        while (s.charAt(stop) == ' ') {
            stop -= 1;
        }
        int start = stop;
        while (start >= 0 && s.charAt(start) != ' ') {
            start -= 1;
        }
        return stop - start;
    }
}
