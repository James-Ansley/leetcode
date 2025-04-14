import {assert, assertFalse} from "@std/assert";
import {isPalindrome} from "@/palindrome_number.js";


Deno.test(function exampleCases() {
    assert(isPalindrome(121));
    assertFalse(isPalindrome(-121));
    assertFalse(isPalindrome(10));
});

Deno.test(function extraCases() {
    assert(isPalindrome(1221));
    assert(isPalindrome(0));
    assert(isPalindrome(-0));
});