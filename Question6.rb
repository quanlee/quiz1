require "benchmark"

def getEvenLoop n
  ret_array = []
  cnt = 0
  number = 0
  while cnt < n
    number += 1
    if number % 2 == 0
      ret_array.push number
      cnt += 1
    end
  end
  return ret_array
end

def getEvenRecursive n, ret_array = [], number = 0
  if n > 0
    number += 1
    if number % 2 == 0
      ret_array.push number
      n -= 1
    end
    return getEvenRecursive n, ret_array, number
  else
    return ret_array
  end
end

Benchmark.bm do |x|
  x.report do
    100_000.times do
      getEvenLoop 100
    end
  end
end

Benchmark.bm do |x|
  x.report do
    100_000.times do
      getEvenRecursive 100
    end
  end
end
