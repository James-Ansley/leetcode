/**
 * @see <https://leetcode.com/problems/palindrome-number>
 *
 * @param {number} x
 * @return {boolean}
 */
function isPalindrome(x) {
    if (0 <= x && x < 10) {
        return true;
    } else if (x < 0 || x % 10 === 0) {
        return false;
    } else {
        let reversed = 0;
        while (x > reversed) {
            reversed = reversed * 10 + x % 10;
            x = Math.floor(x / 10);
        }
        return x === reversed || x === Math.floor(reversed / 10);
    }
}

export {isPalindrome};