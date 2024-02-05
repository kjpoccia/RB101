def negative(number)
  if number <= 0
    number
  else
    number * -1
  end
end

puts negative(5)
puts negative(-3)
puts negative(0)