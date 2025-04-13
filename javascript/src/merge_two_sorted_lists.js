/**
 * @see <https://leetcode.com/problems/merge-two-sorted-lists/>
 *
 * @param {(ListNode | null)} left
 * @param {(ListNode | null)} right
 * @return {ListNode}
 */
function mergeTwoLists(left, right) {
    if (left === null) {
        return right;
    } else if (right === null) {
        return left;
    } else if (left.val < right.val) {
        return new ListNode(left.val, mergeTwoLists(left.next, right));
    } else {
        return new ListNode(right.val, mergeTwoLists(left, right.next));
    }
}

class ListNode {
    constructor(val = 0, next = null) {
        this.val = val;
        this.next = next;
    }
}

export {mergeTwoLists, ListNode};
