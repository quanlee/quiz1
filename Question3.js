var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

for (province in majorCities)
{
  var cities = majorCities[province];
  var citiesCount = majorCities[province].length;
  console.log(province + " has " + citiesCount + " main cities ");
}
