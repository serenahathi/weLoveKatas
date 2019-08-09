const calculatePopulationIncrease = (existingPopulation, increasePercentage, entrants) => {
  const percentageIncrease = (increasePercentage / 100);
  return existingPopulation + (existingPopulation * percentageIncrease) + entrants;
};

const nbYear = (existingPopulation, increasePercentage, entrants, populationToSurpass) => {
  let counter = 0;
  while (true) {
    existingPopulation = calculatePopulationIncrease(existingPopulation, increasePercentage, entrants);
    counter++;
    if (existingPopulation >= populationToSurpass) break;
  }
  return counter;
};

nbYear(1500000, 0.25, 1000, 2000000);

