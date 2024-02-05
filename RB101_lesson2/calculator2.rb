require 'yaml'
MESSAGES = YAML.load_file('calculator_messages2.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i.to_s == number || number.to_f.to_s == number
end

def operation_to_message(op)
  message = case op
            when '1'
              MESSAGES['adding']
            when '2'
              MESSAGES['substracting']
            when '3'
              MESSAGES['multiplying']
            when '4'
              MESSAGES['dividing']
            end
message
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['greeting'] + "#{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_operator'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  sleep(2)

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt(MESSAGES['result'] + "#{result}!")

  prompt(MESSAGES['go_again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt(MESSAGES['goodbye'])
