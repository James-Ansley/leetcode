package com.jamesansley;

import org.junit.jupiter.api.Test;

import static com.jamesansley.Utils.arrayOf;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class LongestCommonPrefixTest {
    @Test
    public void exampleCases() {
        LongestCommonPrefix solution = new LongestCommonPrefix();
        String[] case1 = arrayOf("flower", "flow", "flight");
        String[] case2 = arrayOf("dog", "racecar", "car");

        assertEquals("fl", solution.longestCommonPrefix(case1));
        assertEquals("", solution.longestCommonPrefix(case2));
    }

    @Test
    public void extraCases() {
        LongestCommonPrefix solution = new LongestCommonPrefix();

        assertEquals("foo", solution.longestCommonPrefix(arrayOf("foo")));
        assertEquals("", solution.longestCommonPrefix(arrayOf("")));
        assertEquals("", solution.longestCommonPrefix(arrayOf("a", "")));
    }
}
