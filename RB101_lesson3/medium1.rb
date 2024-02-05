# number 1
# for i in 0..9 do
#  puts (" " * i) + "The Flintstones Rock!"
# end

# number 2
# puts "the value of 40 + 2 is #{40 + 2}"
# puts "the value of 40 + 2 is " + (40 + 2).to_s

# number 3
# def factors(number)
#  divisor = number
#  factors = []
#  while divisor > 0 do
#    factors << number / divisor if number % divisor == 0
#    divisor -= 1
#  end
#  factors
# end

# number 5
limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"