// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';


  function extractToMapObject(mapString) {
  mapString = mapString.replace('{', '');
  mapString = mapString.replace('}', '');
  let splitedMapString = mapString.split(',').map(e => e.split('='));
  let monthTotalPriceMap = new Map(splitedMapString);
  return monthTotalPriceMap;
}

  Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
  Chart.defaults.global.defaultFontColor = '#292b2c';


  // Bar Chart Example
  let monthTotalPrice = "${monthTotalPrice}";
  let dayTotalPrice = "${dayTotalPrice}";

  let monthTotalPriceMap = extractToMapObject(monthTotalPrice);
  let dayTotalPriceMap = extractToMapObject(dayTotalPrice);

  console.log(monthTotalPriceMap);
  console.log(dayTotalPriceMap);

  function createNewChart(context, labels, data, unit, min, max) {
  return new Chart(context, {
  type: 'bar',
  data: {
  labels: labels,
  datasets: [{
  // label: "Revenue",
  backgroundColor: "#ff9935",
  borderColor: "#ff9935",
  data: data,
}],
},
  options: {
  scales: {
  xAxes: [{
  time: {
  unit: unit
},
  gridLines: {
  display: true
},
  ticks: {
  maxTicksLimit: 6
}
}],
  yAxes: [{
  ticks: {
  min: min,
  max: max,
  maxTicksLimit: 5
},
  gridLines: {
  display: true
}
}],
},
  legend: {
  display: false
}
}
});
}

  var dayChart = createNewChart(
  document.querySelector('#myBarChart_2'),
  Array.from(dayTotalPriceMap.keys()),
  Array.from(dayTotalPriceMap.values()),
  'day',
  0,
  Number(Array.from(dayTotalPriceMap.values()).sort().reverse()[0])
  );


  var monthChart = createNewChart(
  document.querySelector('#myBarChart'),
  Array.from(monthTotalPriceMap.keys()),
  Array.from(monthTotalPriceMap.values()),
  'month',
  0,
  Number(Array.from(monthTotalPriceMap.values()).sort().reverse()[0])
  );

