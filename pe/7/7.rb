#!/usr/bin/ruby

k = 10001
i = 1
c = 1

def is_prime(n)
  return false if n == 1
  return true  if n < 4
  return false if n % 2 == 0
  return true  if n < 9
  return false if n % 3 == 0

  r = Math.sqrt(n).floor
  f = 5
  while f <= r 
    return false if n % f == 0
    return false if n % (f+2) == 0
    f +=6
  end
  return true
end

until i == k
  c = c + 2
  i = i + 1 if is_prime(c)
  puts "checking #{c}"
end

puts "-------------------"
puts "#{c} is the answer"

# Question
# --------
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

# Answer
# ------
# 104743

# Strategy
# -----
# Predict range for prime checking
# Sieve range for primes ()
# You can't "calculate primes"...to calc the nth prime, you must search for it iteratively. Therefore the focus should be on developing an 
# optimal prime validation function. Additionally, you can start from the greatest known nth prime less than k as a short cut.

# Notes
# -----
# http://projecteuler.net/project/resources/007_c1bfcd3425fd13f6e9abcfad4a222e35/007_overview.pdf
# 1 is not a prime.
# All primes except 2 are odd.
# All primes greater than 3 can be written in the form 6k+/-1.
# Any number n can have only one primefactor greater than sqrt of n .
# The consequence for primality testing of a number n is: if we cannot find a number f less than or equal n that divides n then n is prime: the only primefactor of n is n itself
