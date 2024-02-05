def is_an_ip_number?(word)
  (0..255).include?(word.to_i)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    if is_an_ip_number?(word)
      return true if dot_separated_words.size == 1
    else
      return false
    end
  end
end

puts dot_separated_ip_address?("192.168.1.1")
puts dot_separated_ip_address?("4.5.5")
puts dot_separated_ip_address?("1.2.3.4.5")