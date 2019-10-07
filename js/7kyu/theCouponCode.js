const checkCoupon = (enteredCode, correctCode, currentDate, expirationDate) => {
  return (isValidDate(currentDate, expirationDate) && isValidCode(enteredCode, correctCode)) ? true : false
};

const isValidDate = (currentDate, expirationDate) => {
  const validUntil = (new Date(expirationDate) + 1)
  return currentDate < validUntil ? true : false
}

const isValidCode = (enteredCode, correctCode) => {
  return (enteredCode == correctCode) ? true : false;
}

checkCoupon('123','123','September 5, 2014','October 1, 2014');
checkCoupon('123a','123','September 5, 2014','October 1, 2014');
