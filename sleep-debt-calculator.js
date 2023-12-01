const getSleepHours = (day) => {
  switch (day) {
    case "Monday":
      return 7;
      break;
    case "Tuesday":
      return 6;
      break;
    case "Wednesday":
      return 8;
      break;
    case "Thursday":
      return 6.5;
      break;
    case "Friday":
      return 6;
      break;
    case "Saturday":
      return 8;
      break;
    case "Sunday":
      return 9;
      break;
    default:
      return "What day is that, punk?! Try again.";
      break;
  }
};

const getActualSleepHours = () => {
  return (
    getSleepHours("Monday") +
    getSleepHours("Tuesday") +
    getSleepHours("Wednesday") +
    getSleepHours("Thursday") +
    getSleepHours("Friday") +
    getSleepHours("Saturday") +
    getSleepHours("Sunday")
  );
};

const getIdealSleepHours = () => {
  const idealHours = 8
  return idealHours * 7
}

const calculateSleepDebt = () => {
  const actualSleepHours = getActualSleepHours()
  const idealSleephours = getIdealSleepHours()

  if (actualSleepHours === idealSleephours) {
    console.log('Perfect sleep!');
  } else if (actualSleepHours > idealSleephours) {
    console.log(`Uh oh - You have overslept ${idealSleephours - actualSleepHours} hours!` );
  } else {
    console.log(`Get more sleep dammit! You need ${idealSleephours - actualSleepHours} hours more to hit your quota`);
  }
}

calculateSleepDebt()