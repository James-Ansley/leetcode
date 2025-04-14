import {assertEquals} from "@std/assert";
import {longestCommonPrefix} from "@/longest_common_prefix.js";

Deno.test(function exampleCases() {
    const case1 = ["flower", "flow", "flight"];
    const case2 = ["dog", "racecar", "car"];

    assertEquals(longestCommonPrefix(case1), "fl");
    assertEquals(longestCommonPrefix(case2), "");
});

Deno.test(function extraCases() {
    assertEquals(longestCommonPrefix(["foo"]), "foo");
    assertEquals(longestCommonPrefix([""]), "");
    assertEquals(longestCommonPrefix(["a", ""]), "");
});
