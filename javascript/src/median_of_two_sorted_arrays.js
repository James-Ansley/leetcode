/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
function findMedianSortedArrays(nums1, nums2) {
    if (nums1.length < nums2.length) {
        return searchMedian(nums1, nums2);
    } else {
        return searchMedian(nums2, nums1);
    }
}

function searchMedian(left, right) {
    const mid = Math.floor((left.length + right.length + 1) / 2);
    let lo = 0;
    let hi = left.length;
    while (lo <= hi) {
        let mid1 = Math.floor((lo + hi) / 2);
        let mid2 = mid - mid1;

        let maxLeftLeft = mid1 === 0 ? -Infinity : left[mid1 - 1];
        let minRightLeft = mid1 === left.length ? Infinity : left[mid1];

        let maxLeftRight = mid2 === 0 ? -Infinity :  right[mid2 - 1];
        let minRightRight = mid2 === right.length ? Infinity : right[mid2];

        if (maxLeftLeft <= minRightRight && maxLeftRight <= minRightLeft) {
            if ((left.length + right.length) % 2 === 0) {
                return (
                    Math.max(maxLeftLeft, maxLeftRight)
                    + Math.min(minRightLeft, minRightRight)
                ) / 2;
            } else {
                return Math.max(maxLeftLeft, maxLeftRight);
            }
        } else if (maxLeftLeft > minRightRight) {
            hi = mid1 - 1;
        } else {
            lo = mid1 + 1;
        }
    }
}

export {findMedianSortedArrays};