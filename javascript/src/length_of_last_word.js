/**
 * @param {string} s
 * @return {number}
 */
function lengthOfLastWord(s) {
    return s.trimEnd().split(/\s+/).at(-1).length;
}

export {lengthOfLastWord};