import {assert, assertFalse} from "@std/assert";
import {isValid} from "@/valid_parentheses.js";

Deno.test(function example_cases() {
    assert(isValid("()"));
    assert(isValid("()[]{}"));
    assert(isValid("([])"));
    assertFalse(isValid("(]"));
});

Deno.test(function extra_cases() {
    assertFalse(isValid("(()"));
    assertFalse(isValid("())"));
    assertFalse(isValid("]["));
});
