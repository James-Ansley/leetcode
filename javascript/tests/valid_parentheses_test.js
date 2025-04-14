import {assert, assertFalse} from "@std/assert";
import {isValid} from "@/valid_parentheses.js";

Deno.test(function exampleCases() {
    assert(isValid("()"));
    assert(isValid("()[]{}"));
    assert(isValid("([])"));
    assertFalse(isValid("(]"));
});

Deno.test(function extraCases() {
    assertFalse(isValid("(()"));
    assertFalse(isValid("())"));
    assertFalse(isValid("]["));
});
