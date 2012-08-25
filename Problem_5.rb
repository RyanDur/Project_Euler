##################################################################################################################
# Title: Problem 5
# From: http://projecteuler.net/problem=5
# Qestion: 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any
# remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
def isPrime?(num)
  for i in 2...(num)
    if((num % i)  == 0)
      return false
    end
  end
  return true
end

def divide_evenly?(x,i)
  if ((x % i) == 0)
    return true
  end
  return false
end

def lcm(i,  x, array)
  while divide_evenly?(x,i)
    x /= i
    array.push(i)
  end
  if isPrime?(x)
    if x < 2
      return array
    else
      array.push(x)
    end
  else
    lcm(i + 1, x, array)
  end
end

def prime_factor(x)
  a = []
  for i in 2..x
    if divide_evenly?(x,i)
     return  a = lcm(i, x, a)
    end
  end
end

def gather_prime_factor(array, num)
  h = Hash.new 
  for i in 2..num
    h[i] = prime_factor(i)
  end
  h
end

def find_same_hash(k,i, b)
  a = []
  for y in k[1]
    if y == i
      a.push(y)
    end
  end
  if a.length > 0
    b.push(a)
  end
  b
end

def find_max_hash(b)
  max = []
  for i in b
    if max.length == 0
      max = i
    elsif max.length < i.length
      max = i
    end
  end
  max
end

def sort_prime_hash(h, i, a)
  b = []
  for k in h
    b = find_same_hash(k, i, b)
  end
  a.push(find_max_hash(b))
end

def sort_prime_factors(hash)
  a = []
  h = {}
  for i in 2..hash.length+1
    if isPrime?(i)
      a = sort_prime_hash(hash, i, a)
    end
  end
  a
end

def multiply_array(a)
  num = 1
  for i in a
    num *= i[0]**i.length
  end
  num
end

num = 20
array = []

h = gather_prime_factor(array, num)
array = sort_prime_factors(h.sort)
num = multiply_array(array)
puts num
##################################################################################################################









#def lcm(i,  x, array)
#  while divide_evenly?(x,i)
#    x /= i
#    array.push(i)
#  end
#  if isPrime?(x)
#    if x < 2
#      return array
#    else
#      array.push(x)
#    end
#  else
#    lcm(i + 1, x, array)
#  end
#end

#def prime_factor(x)
#  a = [x]
#  for i in 2..(a[0])
#    if divide_evenly?(x,i)
#     return  a = lcm(i, a[0], a)
#    end
#  end
#end

#def gather_prime_factor(array, num)
#  for i in 2..num
#    array.push(prime_factor(i))
#  end
#  array
#end

#def reduce_prime_factors(array)
#  a = Hash.new
#  for i in array
#    x = []
#    for j in 1...i.size
#      x.push(i[j])
#    end
#    a[i[0]] = x
#  end
#  a
#end
