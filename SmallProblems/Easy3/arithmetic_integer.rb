puts "==> Enter the first number:"
first_num = gets.chomp.to_i

puts "==> Enter the second number:"
second_num = gets.chomp.to_i

[:+, :-, :*, :/, :%, :**].each do |operator|
  answer = first_num.public_send(operator, second_num)
  puts "==> #{first_num} #{operator} #{second_num} = #{answer}"
end
