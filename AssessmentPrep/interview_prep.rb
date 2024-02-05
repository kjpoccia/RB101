def fix(value)
  p value.object_id
 value = 'x'
 p value.object_id
 value 
end

s = 'abc'
p s.object_id
t = fix(s)
p s
p s.object_id
p t
p t.object_id