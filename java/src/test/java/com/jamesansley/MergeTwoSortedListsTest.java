package com.jamesansley;

import com.jamesansley.utils.ListNode;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

public class MergeTwoSortedListsTest {
    private static ListNode toNodeList(int... values) {
        ListNode result = null;
        for (int i = values.length - 1; i >= 0; i--) {
            result = new ListNode(values[i], result);
        }
        return result;
    }

    @Test
    public void exampleCases() {
        MergeTwoSortedLists solution = new MergeTwoSortedLists();

        assertEquals(
                solution.mergeTwoLists(
                        toNodeList(1, 2, 4),
                        toNodeList(1, 3, 4)
                ),
                toNodeList(1, 1, 2, 3, 4, 4)
        );
        assertNull(solution.mergeTwoLists(null, null));
        assertEquals(
                toNodeList(0),
                solution.mergeTwoLists(null, toNodeList(0))
        );
    }

    @Test
    public void extraCases() {
        MergeTwoSortedLists solution = new MergeTwoSortedLists();
        ListNode case1 = toNodeList(1, 3, 5);
        ListNode case2 = toNodeList(2, 4, 6);

        assertEquals(
                solution.mergeTwoLists(case1, case2),
                toNodeList(1, 2, 3, 4, 5, 6)
        );
        assertEquals(
                solution.mergeTwoLists(case2, case1),
                toNodeList(1, 2, 3, 4, 5, 6)
        );
    }
}
