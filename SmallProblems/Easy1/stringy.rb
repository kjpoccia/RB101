def stringy(num, start = 1)
  string = ""
  if start == 1
    (num / 2).times {string << "10"}
    string << "1" if num.odd?
  else
    (num / 2).times {string << "01"}
    string << "0" if num.odd?
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'