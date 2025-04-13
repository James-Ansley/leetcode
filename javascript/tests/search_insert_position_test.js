import {assertEquals} from "@std/assert";
import {searchInsert} from "@/search_insert_position.js";

Deno.test(function example_cases() {
    assertEquals(searchInsert([1, 3, 5, 6], 5), 2);
    assertEquals(searchInsert([1, 3, 5, 6], 2), 1);
    assertEquals(searchInsert([1, 3, 5, 6], 7), 4);
});

Deno.test(function extra_cases() {
    assertEquals(searchInsert([], 5), 0);
    assertEquals(searchInsert([1, 3, 5, 6], 0), 0);
    assertEquals(searchInsert([1], 0), 0);
    assertEquals(searchInsert([1], 1), 0);
    assertEquals(searchInsert([1], 2), 1);
});
