##################################################################################################################
# Title: Problem 3
# From: http://projecteuler.net/problem=3
# Question: The prime factors of 13195 are 5, 7, 13 and 29.
#           What is the largest prime factor of the number 600851475143 ?
def isPrime?(num)
  for i in 2...(num/3)
    if((num % i)  == 0)
      return false
    end
  end
end

def prime_factor(num)
  x = Math.sqrt(num) + 1
  for i in 2...x
    if((num % 2) != 0)
      if(((num % i) == 0))
        if isPrime?(i)
          puts i
        end
      end 
    end
  end
end

puts prime_factor(600851475143)
#puts isPrime?(13195)
##################################################################################################################
