n = ARGV[0].to_i

def gen_palindromes(limit = 10)
  c, x = 1, 1 # continue and value of x
  while c == 1
    r = x.to_s.reverse()      # reverse r
    [0,1,2,3,4,5,6,7,8,9].each do |m|
      p = "#{x}#{m}#{r}".to_i
      puts "#{p}"
    end
    x += 1
    c = 0 if x == limit
  end
end

gen_palindromes(n)