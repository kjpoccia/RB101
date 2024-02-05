# (1..99).each do |n|
#   if n % 2 == 1
#     puts n
#   end
# end

(1..99).select do |n|
  if n.odd?
    puts n
  end
end