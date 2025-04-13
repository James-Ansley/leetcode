package com.jamesansley;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class ValidParenthesesTest {
    @Test
    public void exampleCases() {
        ValidParentheses solution = new ValidParentheses();

        assertTrue(solution.isValid("()"));
        assertTrue(solution.isValid("()[]{}"));
        assertTrue(solution.isValid("([])"));
        assertFalse(solution.isValid("(]"));
    }
}
