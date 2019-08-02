function disemvowel(str) {
  const vowels = /[aeiou]/gi;
  return str.replace(vowels, "")
}

const testCaseOne = "This website is for losers LOL!";
disemvowel(testCaseOne);
// Expected output:  "Ths wbst s fr lsrs LL!"
