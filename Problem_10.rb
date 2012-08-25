##################################################################################################################
# Title: Problem 10
# From: http://projecteuler.net/problem=10
# Qestion: The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#          Find the sum of all the primes below two million.
def isPrime?(num)
  if ((num == 2) || (num == 5))
    return true
  end
  if (num % 2) == 0
    return false
  end
  if (num % 5) == 0
    return false
  end
  x = Math.sqrt(num)+1
  for i in 2...x
    if((num % i)  == 0)
      return false
    end
  end
end

def sum_of_primes(num)
  x = 0
  for i in 2...num
    if isPrime?(i)
      x += i
      puts i
    end
  end
  x
end

puts sum_of_primes(2000000)
