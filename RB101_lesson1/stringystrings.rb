def stringy(number, start = 1)
  arr = []
  alternate = start.even? ? 1 : 0
  number.times do |x|
    number = x.even? ? start : alternate 
    arr << number
  end
  arr.join
end

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'