input = ''
loop do
  puts "==> Please enter an integer greater than 0:"
  input = gets.chomp.to_i
  break if input > 0
  puts "That doesn't look quite right."
end

operation = ''
loop do
  puts "==> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
  break if operation == "s" || operation == "p"
  puts "That doesn't look quite right."
end

def compute_sum(number)
  (1..number).inject(:+)
end

def compute_product(number)
  (1..number).inject(:*)
end

case operation
when "s"
  result = compute_sum(input)
  operation = "sum"
when "p"
  result = compute_product(input)
  operation = "product"
end

puts "The #{operation} of the integers between 1 and #{input} is #{result}."