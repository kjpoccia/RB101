positions = %w(1st 2nd 3rd 4th 5th last)

inputs = []
positions.each do |string|
  puts "==> Enter the #{string} number:"
  inputs << gets.chomp
end

last = inputs.pop
if inputs.include?(last)
  result = "appears"
else
  result = "does not appear"
end

puts "The number #{last} #{result} in #{inputs}."