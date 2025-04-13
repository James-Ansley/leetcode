package com.jamesansley;

public class LongestCommonPrefix {
    public String longestCommonPrefix(String[] strs) {
        int i = -1;
        boolean allEqual = true;
        while (allEqual) {
            i += 1;
            for (String str : strs) {
                allEqual = allEqual
                      && i < str.length()
                      && str.charAt(i) == strs[0].charAt(i);
            }
        }
        return strs[0].substring(0, i);
    }
}
