a = {:n => 2, :n1 => 0, :n2 => 0} # array
t = 0                             # total
 
while a[:n] < 4000000
  puts a[:n]                    # output n
  t      = t + a[:n]            # update total
  a[:n2] = a[:n1]               # shift n2 to n1
  a[:n1] = a[:n]                # shift n1 to n 
  a[:n]  = 4 * a[:n1] + a[:n2]  # update n
end

puts "total = " + t.to_s        # output total

# Answer
# ------
# 4613732

# Notes
# -----
# I used phi as my constant on my first try to calculate nth values of fibo 
# numbers. E(n)=4*E(n-1)+E(n-2) is the only reliable equation however. Using
# phi will result in calculation errors and therefore one has toto tune it 
# to the nth decimal place for accuracy.

# E(n)   = even fibo number
# E(n-1) = previous even fibo number
# E(n-2) = previous previous even fibo number

# Links
# -----
# http://projecteuler.net/project/resources/002_e3b16b7a862527d1e8f03f8ba204d6d0/002_overview.pdf