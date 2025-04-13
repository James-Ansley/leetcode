import {assertEquals} from "@std/assert";
import {lengthOfLastWord} from "@/length_of_last_word.js";

Deno.test(function example_cases() {
    assertEquals(lengthOfLastWord("Hello World"), 5);
    const case2 = "   fly me   to   the moon  ";
    assertEquals(lengthOfLastWord(case2), 4);
    assertEquals(lengthOfLastWord("luffy is still joyboy"), 6);
});

Deno.test(function extra_cases() {
    assertEquals(lengthOfLastWord("foo"), 3);
    assertEquals(lengthOfLastWord(" a"), 1);
    assertEquals(lengthOfLastWord(" a "), 1);
    assertEquals(lengthOfLastWord("a "), 1);
});