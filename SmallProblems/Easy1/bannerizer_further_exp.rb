def print_in_box(string)
  if string.size > 78
    trunc_string = string[0..78]
  else
    trunc_string = string
  end

  length = trunc_string.size + 2
  puts "+" + ("-" * length) + "+"
  puts "|" + (" " * length) + "|"
  puts "| " + trunc_string + " |"
  puts "|" + (" " * length) + "|"
  puts "+" + ("-" * length) + "+"
end

print_in_box('To boldly go where no one has gone before. This is a much longer string. I\'m not sure if I\'ve made it past 80 characters yet.')
print_in_box(" ")