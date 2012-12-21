n = ARGV[0].to_i

c, d = 1, 232700000

while c == 1
  a = 0
  if d % 20 == 0
    (1..20).each do |x|
      if d % x > 0
        a = 1
        break
      end
    end 
  end
  puts "#{d}"
  c = 0 if a == 0
  d += 20
end

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
