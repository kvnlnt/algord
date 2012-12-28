k = ARGV[0].to_i 
p = [] # primes
2.upto(k) { |x| p << x if ("1" * x) !~ /^1?$|^(11+?)\1+$/ } # create list of primes up to k

# Calc powers
p.each_with_index do |x, i|
  break if x >= Math.sqrt(k)   
  pwr = (Math.log(k) / Math.log(x)).floor
  p[i] = x**pwr
end 

t = 1 # total
p.each do |x|
  t *= x
end

# output
puts t

# Question
# --------
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Answer
# ------
# 232,792,560

# Notes
# -----
# http://projecteuler.net/project/resources/005_f10c761be4eb8fc6ddd71c48b18c95fe/005_overview.pdf
#
# To calculate the product of consecutive integers:
# create list of primes up to largest integer in your consective list (call that "k")
# loop each prime and raise it to the highest power less than k
# for k=20, the prime list results in: 2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19
# which becomes 16 * 9 * 5 * 7 * 11 * 13 * 17 * 19 = 232,792,560
# notice the 2 ^ 4th  and the 3 ^ 2nd? The other primes can't be raised to a higher power than 1
