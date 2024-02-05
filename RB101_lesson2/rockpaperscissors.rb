VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']

def win?(first, second)
  winners_and_losers = {'rock' => ['scissors', 'lizard'], 'scissors' => ['paper', 'lizard'],
  'paper' => ['rock', 'spock'], 'spock' => ['scissors', 'rock'],
  'lizard' => ['paper', 'spock']}

  winners_and_losers[first].include?(second)
end

def translate_choice(weapon)
  case weapon
  when 'r'
    "rock"
  when 'p'
    "paper"
  when 's'
    "scissors"
  when 'sp'
    "spock"
  when 'l'
    "lizard"
  else weapon
  end
end

def determine_winner(player, computer)
  if win?(player, computer)
    "You won this round!"
  elsif win?(computer, player)
    "Computer won this round!"
  else
    "It's a tie!"
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do #loop until player says they don't want to play anymore

  player_wins = 0
  computer_wins = 0

  loop do #loop until wins == 3 for one player

    choice = ''
    loop do #valid choice loop
      prompt("Choose one: rock (or 'r'), paper (or 'p'), scissors (or 's'),
            spock (or 'sp'), or lizard (or 'l')")
      choice = gets.chomp

      choice = translate_choice(choice)

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{choice}; Computer chose: #{computer_choice}")

    winner = determine_winner(choice, computer_choice)

    if winner == "You won this round!"
      player_wins += 1
    elsif winner == "Computer won this round!"
      computer_wins += 1
    end

    prompt(winner)

    if player_wins == 3
      prompt("You are the grand winner!")
      break
    elsif computer_wins == 3
      prompt("The computer is the grand winner!")
      break
    else
      prompt("You have #{player_wins} points, the computer has #{computer_wins} points")
    end

  end

  prompt("Would you like to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt("Thank you for playing. Goodbye!")
