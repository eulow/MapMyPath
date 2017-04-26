export const convertSecondsToTime = (secNum) => {
  let hours   = Math.floor(secNum / 3600);
  let minutes = Math.floor((secNum - (hours * 3600)) / 60);
  let seconds = secNum - (hours * 3600) - (minutes * 60);

  if (hours   < 10) {hours   = "0"+hours;}
  if (minutes < 10) {minutes = "0"+minutes;}
  if (seconds < 10) {seconds = "0"+seconds;}
  return (hours+':'+minutes+':'+seconds);
};

export const convertTimeToSeconds = (hours, minutes, seconds) => {
  const hoursSeconds = hours * 3600;
  const minutesSeconds = minutes * 60;
  return (hoursSeconds + minutesSeconds + seconds);
};
