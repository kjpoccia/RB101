require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages2.yml')

def prompt(message)
  puts "=> #{MESSAGES[message]}"
end

loop do
  prompt('welcome')
  name = gets.chomp
  puts "Hey there, #{name}"

  loan_amount = ''
  loop do
    prompt('loan_amount')
    loan_amount = gets.chomp.to_i
    break if loan_amount > 0
    prompt('invalid_entry')
  end

  apr = ''
  loop do
    prompt('apr')
    apr = gets.chomp.to_f
    break if apr >= 1
    prompt('invalid_entry')
  end

  loan_duration = ''
  loop do
    prompt('loan_duration')
    loan_duration = gets.chomp.to_i
    break if loan_duration > 0
    prompt('invalid_entry')
  end

  monthly_interest = apr / 100 / 12
  loan_duration_months = loan_duration * 12
  monthly_payment = loan_amount * (monthly_interest /
                    (1 - (1 + monthly_interest)**(-loan_duration_months)))

  puts "Your monthly payment is $#{format('%.2f', monthly_payment)}"

  prompt('go_again')
  go_again = gets.chomp
  break unless go_again.downcase.start_with?('y')
end

prompt('goodbye')
