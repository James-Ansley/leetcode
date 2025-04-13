package com.jamesansley;

import java.util.HashMap;
import java.util.Map;

public class TwoSum {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> seen = new HashMap<>();
        for (int i = 0; i < nums.length; i++) {
            if (seen.containsKey(nums[i])) {
                return new int[]{seen.get(nums[i]), i};
            } else {
                seen.put(target - nums[i], i);
            }
        }
        throw new RuntimeException("No pair summing to target was found");
    }
}
