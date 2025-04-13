import {assertEquals} from "@std/assert";
import {ListNode, mergeTwoLists} from "@/merge_two_sorted_lists.js";

Deno.test(function example_cases() {
    const case1 = toNodeList([1, 2, 4]);
    const case2 = toNodeList([1, 3, 4]);
    assertEquals(mergeTwoLists(case1, case2), toNodeList([1, 1, 2, 3, 4, 4]));
    assertEquals(mergeTwoLists(null, null), null);
    assertEquals(mergeTwoLists(null, toNodeList([0])), toNodeList([0]));
});

Deno.test(function extra_cases() {
    const case1 = toNodeList([1, 3, 5]);
    const case2 = toNodeList([2, 4, 6]);
    assertEquals(mergeTwoLists(case1, case2), toNodeList([1, 2, 3, 4, 5, 6]));
    assertEquals(mergeTwoLists(case2, case1), toNodeList([1, 2, 3, 4, 5, 6]));
});

function toNodeList(values) {
    let result = null;
    for (let i = values.length - 1; i >= 0; i--) {
        result = new ListNode(values[i], result);
    }
    return result;
}


