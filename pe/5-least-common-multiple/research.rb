# c, d = 1, 232700000

# while c == 1
#   a = 0
#   if d % 20 == 0
#     (1..20).each do |x|
#       if d % x > 0
#         a = 1
#         break
#       end
#     end 
#   end
#   puts "#{d}"
#   c = 0 if a == 0
#   d += 20
# end