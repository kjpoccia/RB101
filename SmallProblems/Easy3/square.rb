def multiply(num1, num2)
  num1 * num2
end

def power_to_the_n(num, n)
  product = num
  while n > 1
    product = multiply(product, num)
    n -= 1
  end
  product
end

puts power_to_the_n(5, 2)
puts power_to_the_n(-8, 3)