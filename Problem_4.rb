##################################################################################################################
# Title: Problem 4
# From: http://projecteuler.net/problem=4
# Question: A palindromic number reads the same both ways. The largest palindrome made from the product of
#           two 2-digit numbers is 9009 = 91x99.
#           Find the largest palindrome made from the product of two 3-digit numbers.
def isPalindrome?(x)
  s = x.to_s
  if s == s.reverse
    return true
  end
end

def find_divisors(x)
  for i in 100..999
    if ((x % i) == 0)
      if((x/i) < 1000)
        puts x/i
        puts i
        puts x
      end
    end
  end
end

x = 999 * 999 # ceiling
y = 100 * 100 # floor

x.downto(y){ |x| 
  if isPalindrome?(x)
    find_divisors(x)
  end
}
##################################################################################################################
