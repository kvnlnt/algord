#!/usr/bin/python

n           = 100
sum_squares = (n*(n+1)*(2*n+1) )/6
squares_sum = sum(range(n+1)) ** 2
answer      = squares_sum - sum_squares
print       (answer)

# Question
# --------
# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


# Answer
# ------
# 25164150

# Notes
# -----
# Sum of squares equation:
# (Pn) = ( n × (n+1) × (2n+1) ) / 6 