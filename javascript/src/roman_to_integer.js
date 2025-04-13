const valueMap = new Map([
    ["I", 1],
    ["V", 5],
    ["X", 10],
    ["L", 50],
    ["C", 100],
    ["D", 500],
    ["M", 1000],
]);


/**
 * @see <https://leetcode.com/problems/roman-to-integer>
 *
 * @param {string} string
 * @return {number}
 */
function romanToInt(string) {
    let total = 0;
    for (let i = 0; i < string.length; i++) {
        const value = valueMap.get(string[i]);
        const next = valueMap.get(string[i + 1]);
        if (value < next) {
            total -= value;
        } else {
            total += value;
        }
    }
    return total;
}

export {romanToInt};
