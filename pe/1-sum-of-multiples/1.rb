@t = 1000           # target
def sum_div_by(n)
  d = (@t-1) / n    # calc divisions
  a = n*(d*(d+1))/2 # calc answer
  return a
end
puts sum_div_by(3) + sum_div_by(5) - sum_div_by(15)

# Question
# --------
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# Answer
# ------
# 233168

# Notes
# -----
# 1+2+3+...+n = n(n+1)/2
# Line 5 uses a centeral mathematical proof that 1+2+3+...+n = n(n+1)/2. 
# This "run sum" is a "Triangle Number". We can visualize the sum 
# 1+2+3+...+n as a triangle of symbols like so:
# + (1)
# ++ (2)
# +++ (3)
# ++++ (4)
# +++++ (5)

# Links
# -----
# http://projecteuler.net/project/resources/001_c619a145e9d327a5c4c84649bec9981b/001_overview.pdf (Answer)
# http://www.maths.surrey.ac.uk/hosted-sites/R.Knott/runsums/triNbProof.html (Triangle Proof Example)

