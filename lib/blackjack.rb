require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(n)
  prompt_user
  reply = get_user_input
  if reply == "h"
    n += deal_card
  elsif reply == "s"
    return n 
  else
    prompt_user
    invalid_command
    get_user_input
  end
  n
end

# def hit?(n)
#   prompt_user
#   reply = get_user_input
#   if reply == "h"
#     n += deal_card
#   elsif reply == "s"
#     return n 
#   else
#     prompt_user
#     invalid_command
#     get_user_input
#   end
#   n
# end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end
    
