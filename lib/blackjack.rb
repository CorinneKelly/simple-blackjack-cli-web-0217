def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  new_card = 1 + rand(11)
  new_card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  # end_game if card_total > 21
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
  user_input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0

  2.times do
    deal_card
    card_total += deal_card
  end
  display_card_total(card_total)
  card_total
end


def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  card_total = current_card_total

    if user_input == "s"
    elsif user_input == "h"
      card_total += deal_card
    else
      invalid_command
      prompt_user
    end

  return card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  hit?
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round

  if card_total < 21
    new_card_total = hit?(card_total)
    display_card_total(new_card_total)
  end

  end_game(new_card_total)

end
