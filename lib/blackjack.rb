require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = 0
  2.times do
    total += deal_card
  end
  display_card_total(total)
  total
end

def hit?(number)
  # code hit? here
  total = number

    prompt_user
    input = get_user_input

    if invalid_command(input)
      puts "Please enter a valid command"
      prompt_user
    elsif input == 'h'
      total += deal_card
    end
    total
end

def invalid_command(input)
  # code invalid_command here
  true if input != 's' && input != 'h'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
