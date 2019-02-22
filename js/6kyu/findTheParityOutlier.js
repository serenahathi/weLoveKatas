function findOutlier(integers){

  let arrayOfEvens = integers.filter((value) => value % 2 == 0)
  let arrayOfOdds = integers.filter((value) => value % 2 != 0)

  return arrayOfEvens.length == 1 ? parseInt(arrayOfEvens) : parseInt(arrayOfOdds);
  }
