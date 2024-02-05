puts "What's the person's name?"
name = gets.chomp
if name.empty?
  name = "Teddy"
end

def age_and_name(name, age)
  puts "#{name} is #{age} years old!"
end

age = rand(20..200)

age_and_name(name, age)