import {assertEquals} from "@std/assert";
import {romanToInt} from "@/roman_to_integer.js";

Deno.test(function example_cases() {
    assertEquals(romanToInt("III"), 3);
    assertEquals(romanToInt("LVIII"), 58);
    assertEquals(romanToInt("MCMXCIV"), 1994);
});
