VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts("=> #{message}")
end

def translate_weapon(weapon)
  case weapon
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 's'
    'scissors'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  end
end

def win?(first, second)
  winners = { 'scissors' => ['paper', 'lizard'], 'paper' => ['rock', 'spock'],
              'rock' => ['lizard', 'scissors'], 'spock' => ['scissors', 'rock'],
              'lizard' => ['spock', 'paper'] }
  winners[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do # main loop
  system('clear')
  prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
  sleep(2)

  player_wins = 0
  computer_wins = 0

  loop do # 3 wins loop
    choice = ''
    loop do # choose your player loop
      prompt("Choose one: rock (or 'r'), paper (or 'p'), scissors (or 's'),
      lizard (or 'l'), or spock (or 'sp')")
      choice = gets.chomp

      choice = translate_weapon(choice)

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    puts "You chose: #{choice}; Computer chose: #{computer_choice}"
    display_results(choice, computer_choice)
    sleep(2)

    if win?(choice, computer_choice)
      player_wins += 1
    elsif win?(computer_choice, choice)
      computer_wins += 1
    end

    puts "The score is you: #{player_wins}, computer: #{computer_wins}"
    sleep(2)

    break if player_wins == 3 || computer_wins == 3
  end

  if player_wins == 3
    prompt("You won the whole thing!")
  elsif computer_wins == 3
    prompt("You lost real bad")
  end

  sleep(2)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
