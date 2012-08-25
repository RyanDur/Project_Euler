##################################################################################################################
# Title: Problem 6
# From: http://projecteuler.net/problem=6
# Qestion: The sum of the squares of the first ten natural numbers is,
#                                              1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
#                                              (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
#                                              3025 - 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(num)
a = 0
  for i in 1..num
    a += i**2
  end
  a
end

def square_of_sums(num)
a = 0
  for i in 1..num
    a += i
  end
  a**2
end

num = 100

a = sum_of_squares(num)
b = square_of_sums(num)
puts b - a
