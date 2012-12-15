a = {:n => 2, :n1 => 0, :n2 => 0}
t = 0
 
while a[:n] < 4000000
  puts a[:n]
  t = t + a[:n]
  a[:n2] = a[:n1]
  a[:n1] = a[:n]
  a[:n] = 4 * a[:n1] + a[:n2]
end

puts "total = " + t.to_s

# My first try:

# def fib_sum_even_to(n)
#   x = 0
#   t = 0
#   while t < n
#     puts x.to_s + " = " + nth(x).to_s + " +"
#     t = t + nth(x)
#     x = x + 3
#   end
#   puts "total = " + t.to_s
# end

# def nth(n)
#   phi = 1.61803398874989
#   f   = (phi**n/Math.sqrt(5)).round
#   return f
# end

# puts fib_sum_even_to(4000000)

# Answer
# ------
# 4613732

# Notes
# -----
# I used phi as my constant on my first try to calculate nth values of fibo 
# numbers. Apparently, E(n)=4*E(n-1)+E(n-2) works too. I think this probably works
# better as I ran into calculation errors with the constant and therefore
# had to tune it to the 14th decimal place for accuracy.

# E(n)   = even fibo number
# E(n-1) = previous even fibo number
# E(n-2) = previous previous even fibo number

# Links
# -----
# http://projecteuler.net/project/resources/002_e3b16b7a862527d1e8f03f8ba204d6d0/002_overview.pdf