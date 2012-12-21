n = ARGV[0].to_i

# Quick evalution of factors of 2
if n%2 == 0
  lastf = 2
  n = n/2
  n = n/2 while n%2 == 0
else
  lastf = 1
end

# Now set factor to 3 and inc by 2's to skip even numbers
f = 3

# Create upper limit for primes (see notes)
maxf = Math.sqrt(n)

while n > 1 && f <= maxf do
  if n%f == 0
    n = n/f
    lastf = f
    while n%f == 0 do
      n = n/f
      maxf = Math.sqrt(n)
    end
  end
  f = f+2
end

# Result
if n == 1
  puts lastf
else
  puts n
end

# Question
# --------
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# Answer
# ------
# 6857

# Notes
# -----
# Every number n can at most have one prime factor greater than the square root of n
# http://projecteuler.net/project/resources/003_96c8248cc19fc7807cdacab7c7e4b3b2/003_overview.pdf
# ref - Quadratic Sieve
# ref - Sieve of Eratosthenes