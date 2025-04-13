package com.jamesansley;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class LengthOfLastWordTest {
    @Test
    public void exampleCases() {
        LengthOfLastWord solution = new LengthOfLastWord();
        String case2 = "   fly me   to   the moon  ";

        assertEquals(5, solution.lengthOfLastWord("Hello World"));
        assertEquals(4, solution.lengthOfLastWord(case2));
        assertEquals(6, solution.lengthOfLastWord("luffy is still joyboy"));
    }

    @Test
    public void extraCases() {
        LengthOfLastWord solution = new LengthOfLastWord();
        assertEquals(3, solution.lengthOfLastWord("foo"));
        assertEquals(3, solution.lengthOfLastWord("bar foo  "));
        assertEquals(1, solution.lengthOfLastWord(" a"));
        assertEquals(1, solution.lengthOfLastWord(" a "));
        assertEquals(1, solution.lengthOfLastWord("a "));
    }
}
