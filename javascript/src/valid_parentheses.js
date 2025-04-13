const parenMap = new Map([
    ["(", ")"],
    ["[", "]"],
    ["{", "}"],
]);

/**
 * @see <https://leetcode.com/problems/valid-parentheses>
 *
 * @param {string} string
 * @return {boolean}
 */
function isValid(string) {
    const stack = [];
    for (const char of string) {
        if (parenMap.has(char)) {
            stack.push(parenMap.get(char));
        } else if (stack.length !== 0 && stack.at(-1) === char) {
            stack.pop();
        } else {
            return false;
        }
    }
    return stack.length === 0;
}

export {isValid};
