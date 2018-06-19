def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
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
  total = deal_card + deal_card
  puts "Your cards add up to #{total}"
  total
end

def hit?(num)
  prompt_user
  i = get_user_input
  if i == 's'
    total = num
  elsif i == 'h'
    total = num + deal_card
    # puts "total = #{total}"
  else
    invalid_command
    prompt_user
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    hit?(total)
    display_card_total(total)
    total = total
  end
  end_game
end
