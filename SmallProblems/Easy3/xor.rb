def xor?(sitch_a, sitch_b)
  (sitch_a && !sitch_b) || (!sitch_a && sitch_b)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
