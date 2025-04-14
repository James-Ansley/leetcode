import {assertEquals} from "@std/assert";
import {findMedianSortedArrays} from "@/median_of_two_sorted_arrays.js";


Deno.test(function exampleCases() {
    assertEquals(findMedianSortedArrays([1, 3, 8, 9, 15], [7, 11, 18, 19, 21, 25]), 11);
    assertEquals(findMedianSortedArrays([1, 3], [2]), 2);
    assertEquals(findMedianSortedArrays([1, 2], [3, 4]), 2.5);
});

Deno.test(function extraCases() {
    assertEquals(findMedianSortedArrays([1], []), 1);
    assertEquals(findMedianSortedArrays([], [1]), 1);
    assertEquals(findMedianSortedArrays([1], [2]), 1.5);
    assertEquals(findMedianSortedArrays([1, 3, 5], [2, 4]), 3);
    assertEquals(findMedianSortedArrays([1, 3, 4, 5, 6], [2]), 3.5);
});
