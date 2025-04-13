package com.jamesansley;

import java.util.Map;
import java.util.Stack;

public class ValidParentheses {
    private static final Map<Character, Character> charMap = Map.of(
            '(', ')',
            '[', ']',
            '{', '}'
    );

    public boolean isValid(String s) {
        Stack<Character> stack = new Stack<>();
        for (char c : s.toCharArray()) {
            if (charMap.containsKey(c)) {
                stack.push(charMap.get(c));
            } else if (!stack.isEmpty() && stack.peek() == c) {
                stack.pop();
            } else {
                return false;
            }
        }
        return stack.isEmpty();
    }
}
