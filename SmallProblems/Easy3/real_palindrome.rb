def palindrome?(alpha_numeric)
  alpha_numeric == alpha_numeric.reverse
end

def alpha_numeric?(char)
  (48..57).include?(char.ord) || (97..122).include?(char.ord)
end

def real_palindrome?(unaltered_string)
  unaltered_string = unaltered_string.downcase.split('')
  altered_string = unaltered_string.inject([]) do |result, char|
                      result << char if alpha_numeric?(char)
                      result
                    end
  palindrome?(altered_string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
