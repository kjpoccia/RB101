def is_an_ip_number?(word)
  num = word.to_i
  num < 256 && num >= 0
end


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  return true
end

p dot_separated_ip_address?("4.5.5")
p dot_separated_ip_address?("1.2.4.5.5")
p dot_separated_ip_address?("192.68.1.1")

# need a false condition
# need to check if it gets anything other than 4 numbers