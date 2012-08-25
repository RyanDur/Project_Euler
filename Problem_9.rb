##################################################################################################################
# Title: Problem 9
# From: http://projecteuler.net/problem=9
# Qestion: A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#                                      a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def coprime?(num1,num2)
  a = 0, b =0
  if num1 == num2
    return false
  end
  if num1 > num2
    a = num1
    b = num2
  else
    a = num2
    b = num1
  end
  if gcd(a,b) == 1
    return true
  end
  return false
end

def gcd(num1,num2)
  a = 0, b =0
  d = []
  if num1 == num2
    return false
  end
  if num1 > num2
    a = num1
    b = num2
  else
    a = num2
    b = num1
  end
  while (a % b != 0) 
    temp = a
    a = b
    b = temp % a
  end
  return b
end

def pythag_triple(num)
  q = num
  a = 0, b = 0, c = 0
  x = Math.sqrt(q/2)
  for i in 2..x
    for j in 1...i
      #if coprime?(i,j) # uncomment if you want only primitives
      #d = gcd(i,j) # uncomment to find more triples w/o coprime
      a = (i**2 - (j)**2)#*d
      b = 2*i*j#d
      c = (i**2 + (j)**2)#*d
      m = a + b + c
      if m == 1000
        puts "a = #{a}, b = #{b}, c = #{c}"
        puts m
        puts a*b*c
      end
      #end
    end
  end
end

pythag_triple(1000)


