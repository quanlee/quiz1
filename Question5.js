var getEvenNumbers = function(n)
{
  var ret_array = [];
  var cnt = 0;
  var number = 0;
  while(cnt < n)
  {
    number += 1;
    if(number % 2 == 0)
    {
      ret_array.push(number);
      cnt += 1;
    }
  }
  return ret_array;
}

console.log(getEvenNumbers(0));
console.log(getEvenNumbers(1));
console.log(getEvenNumbers(2));
console.log(getEvenNumbers(3));
console.log(getEvenNumbers(4));
