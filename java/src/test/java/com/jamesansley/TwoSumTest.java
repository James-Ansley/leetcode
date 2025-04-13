package com.jamesansley;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;

public class TwoSumTest {
    @Test
    public void exampleCases() {
        TwoSum solution = new TwoSum();

        assertArrayEquals(
                arrayOf(0, 1),
                solution.twoSum(arrayOf(2, 7, 11, 15), 9)
        );
        assertArrayEquals(arrayOf(1, 2), solution.twoSum(arrayOf(3, 2, 4), 6));
        assertArrayEquals(arrayOf(0, 1), solution.twoSum(arrayOf(3, 3), 6));
    }

    private int[] arrayOf(int... values) {
        return values;
    }
}
