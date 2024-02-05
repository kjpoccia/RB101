def multisum(num)
  (1..num).to_a.inject(0) do |result, x|
    result = result + x if x % 3 == 0 || x % 5 == 0
    result
  end
end

puts multisum(20)
puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(1000)