/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
function twoSum(nums, target) {
    const seen = new Map();
    for (const [i, value] of nums.entries()) {
        if (seen.has(value)) {
            return [seen.get(value), i];
        } else {
            seen.set(target - value, i);
        }
    }
}

export {twoSum};
