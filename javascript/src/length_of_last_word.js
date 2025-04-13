/**
 * @see <https://leetcode.com/problems/length-of-last-word/>
 *
 * @param {string} s
 * @return {number}
 */
function lengthOfLastWord(s) {
    let stop = s.length - 1;
    while (s[stop] === " ") {
        stop -= 1;
    }
    let start = stop;
    while (start >= 0 && s[start] !== " ") {
        start -= 1;
    }
    return stop - start;
}

export {lengthOfLastWord};