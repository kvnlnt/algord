# R&D
# ---
a0 = ARGV[0].to_i

def is_prime(n)
  return false if n <= 1
  2.upto(Math.sqrt(n).to_i) do |x|
    return false if n%x == 0
  end
  true
end

def largestPrime(n)
  if is_prime(n)
    puts n 
  else
    f = 2
    while n % f == 0
      n = n / f
      f += 1
    end
    puts f
    puts n
  end
end

largestPrime(a0)