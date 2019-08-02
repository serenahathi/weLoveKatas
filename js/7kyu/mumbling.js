const accum = s => {
  return s
    .split("")
    .map((letter, index) => letter.toLowerCase().repeat(index + 1))
    .map(word => word.charAt(0).toUpperCase() + word.substr(1))
    .join("-");
};

const testCaseOne = accum("ZpglnRxqenU");
console.log(testCaseOne);
// Expected result: "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu")
