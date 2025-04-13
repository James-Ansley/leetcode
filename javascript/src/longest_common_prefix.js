/**
 * @param {string[]} strings
 * @return {string}
 */
function longestCommonPrefix(strings) {
    const length = Math.min(...strings.map((seq) => seq.length));
    let i = -1;
    let allEqual = true;
    while (i < length && allEqual) {
        i += 1;
        allEqual = strings.every((seq, _, arr) => seq[i] === arr[0][i]);
    }
    return strings[0].slice(0, i);
}

export {longestCommonPrefix};
