require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_num(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['invalid_name'])
  else
    break
  end
end

prompt(MESSAGES['greeting'] + "#{name}!")

loop do # main loop
  loan_amount = ''
  loop do # loan amount loop
    prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp
    if valid_num(loan_amount)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  apr = ''
  loop do # APR loop
    prompt(MESSAGES['apr'])
    apr = gets.chomp
    if valid_num(apr)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  duration = ''
  loop do # duration loop
    prompt(MESSAGES['duration'])
    duration = gets.chomp
    if valid_num(duration)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  # monthly payment calculation
  duration_in_months = duration.to_i * 12
  monthly_interest_rate = apr.to_f / 1200
  monthly_payment = loan_amount.to_f * (monthly_interest_rate /
    (1 - (1 + monthly_interest_rate)**(-duration_in_months)))

  prompt(MESSAGES['monthly_payment_is'] + "#{format('%.2f', monthly_payment)}!")

  prompt(MESSAGES['again'])
  answer = gets.chomp

  if answer.downcase.start_with?('y')
    next
  else
    break
  end
end

prompt(MESSAGES['goodbye'])
