var isPrime = function(n)
{
  if(n == 1) return true;

  for(var i = 2; i < n; i++)
  {
    if(n % i == 0) return false;
  }
  return true;
}

console.log(isPrime(1));
console.log(isPrime(2));
console.log(isPrime(3));
console.log(isPrime(4));
console.log(isPrime(5));
console.log(isPrime(6));
console.log(isPrime(7));
console.log(isPrime(8));
console.log(isPrime(9));
