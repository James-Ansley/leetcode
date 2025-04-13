import {assertEquals} from "@std/assert";
import {twoSum} from "@/two_sum.js";

Deno.test(function example_cases() {
    assertEquals(twoSum([2, 7, 11, 15], 9), [0, 1]);
    assertEquals(twoSum([3, 2, 4], 6), [1, 2]);
    assertEquals(twoSum([3, 3], 6), [0, 1]);
});
