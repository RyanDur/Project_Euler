##################################################################################################################
# Title: Problem 7
# From: http://projecteuler.net/problem=7
# Qestion: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

def isPrime?(num)
  x = Math.sqrt(num) + 1
  for i in 2...x
    if((num % i)  == 0)
      return false
    end
  end
  return true
end

def find_prime(num, find)
  condition = 1
  while condition < num
    find += 1
    if isPrime?(find)
      condition += 1
    end
  end
  find
end


num = 10001
find = 2
condition = 0
a = find_prime(num, find)
puts a
##################################################################################################################
