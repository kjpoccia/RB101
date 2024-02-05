def crunch(string)
  new_string = ''
  i = 0
  while i < string.length
    new_string << string[i] if string[i] != string[i + 1]
    i += 1
  end
new_string
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')