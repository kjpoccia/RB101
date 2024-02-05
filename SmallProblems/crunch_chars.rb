def crunch(string)
  new_string = ''
  i = 0
  string.each_char do |x|
    new_string << x if x != new_string[-1]
  end
new_string
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')