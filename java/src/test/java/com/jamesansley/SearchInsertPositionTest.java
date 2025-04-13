package com.jamesansley;

import org.junit.jupiter.api.Test;

import static com.jamesansley.Utils.arrayOf;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class SearchInsertPositionTest {
    @Test
    public void exampleCases() {
        SearchInsertPosition solution = new SearchInsertPosition();

        assertEquals(2, solution.searchInsert(arrayOf(1, 3, 5, 6), 5));
        assertEquals(1, solution.searchInsert(arrayOf(1, 3, 5, 6), 2));
        assertEquals(4, solution.searchInsert(arrayOf(1, 3, 5, 6), 7));
    }

    @Test
    public void extraCases() {
        SearchInsertPosition solution = new SearchInsertPosition();

        assertEquals(0, solution.searchInsert(new int[0], 5));
        assertEquals(0, solution.searchInsert(arrayOf(1, 3, 5, 6), 0));
        assertEquals(0, solution.searchInsert(arrayOf(1), 0));
        assertEquals(0, solution.searchInsert(arrayOf(1), 1));
        assertEquals(1, solution.searchInsert(arrayOf(1), 2));
    }
}
