n = ARGV[0].to_i

def max_palidrome(length = 2)
  n = 9.to_s * length
  x = n.to_i
  y = n.to_i
  largest_p = 0

  x.downto(0) do |a|
    y.downto(0) do |b|
      r = a * b
      if "#{r}" == "#{r}".reverse && r != 0
        largest_p = r if r > largest_p
      end
    end
  end

  puts largest_p
end

max_palidrome(n)


# Question
# --------
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


# Answer
# ------
# 906609


# Notes
# -----
# My solution is brute force. A better solution is below. However neat it is, I didn't find this challenge very edifying.
# http://projecteuler.net/project/resources/004_c20e2a33704cd30afb5dbe9530e30a00/004_overview.pdf