def uppercase?(string)
  index = 0
  while index < string.size
    if (97..122).include?(string[index].ord)
      flag = "Yes"
      break
    else
      index += 1
    end
  end
  flag == "Yes" ? false : true
end


puts uppercase?('t') #== false
puts uppercase?('T') #== true
puts uppercase?('Four Score') #== false
puts uppercase?('FOUR SCORE') #== true
puts uppercase?('4SCORE!') #== true
puts uppercase?('') #== true