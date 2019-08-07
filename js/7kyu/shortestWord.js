const findShort = (sentence) => {
  return sentence
    .split(' ')
    .map(word => word.length)
    .sort((a, b) => a - b)[0];
};

const a = findShort('MadeSafeCoin ProofOfStake LiteCoin Mine');
// Expected output: 4
