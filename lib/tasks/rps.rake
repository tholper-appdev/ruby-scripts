desc "Play rock in rock-paper-scissors"
task :play_rock do
  my_move = "rock"
  
  # Print the move we played
  ap("We played " + my_move)

  # Select a random move for the computer
  choices = [
    "rock",
    "paper",
    "scissors"
  ]

  rand_index = rand(choices.size)
  comp_move = choices.at(rand_index)
  
  # Print the move the computer played
  ap("Computer played " + comp_move)

  # Print the outcome of the game
  if my_move == comp_move
    result = "We tied!"
  elsif my_move == "rock" && comp_move == "paper" || my_move == "paper" && comp_move == "scissors" || my_move == "scissors" && comp_move == "rock"
    result = "We lost!"
  elsif my_move == "paper" && comp_move == "rock" || my_move == "scissors" && comp_move == "paper" || my_move == "rock" && comp_move == "scissors"
    result = "We won!"
  end
  
  ap(result)

end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  my_move = "paper"

 # Print the move we played
  ap("We played " + my_move)

  # Select a random move for the computer
  choices = [
    "rock",
    "paper",
    "scissors"
  ]

  rand_index = rand(choices.size)
  comp_move = choices.at(rand_index)
  
  # Print the move the computer played
  ap("Computer played " + comp_move)

  # Print the outcome of the game
  if my_move == comp_move
    result = "We tied!"
  elsif my_move == "rock" && comp_move == "paper" || my_move == "paper" && comp_move == "scissors" || my_move == "scissors" && comp_move == "rock"
    result = "We lost!"
  elsif my_move == "paper" && comp_move == "rock" || my_move == "scissors" && comp_move == "paper" || my_move == "rock" && comp_move == "scissors"
    result = "We won!"
  end
  
  ap(result)
end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do
  my_move = "scissors"

 # Print the move we played
  ap("We played " + my_move)

  # Select a random move for the computer
  choices = [
    "rock",
    "paper",
    "scissors"
  ]

  rand_index = rand(choices.size)
  comp_move = choices.at(rand_index)
  
  # Print the move the computer played
  ap("Computer played " + comp_move)

  # Print the outcome of the game
  if my_move == comp_move
    result = "We tied!"
  elsif my_move == "rock" && comp_move == "paper" || my_move == "paper" && comp_move == "scissors" || my_move == "scissors" && comp_move == "rock"
    result = "We lost!"
  elsif my_move == "paper" && comp_move == "rock" || my_move == "scissors" && comp_move == "paper" || my_move == "rock" && comp_move == "scissors"
    result = "We won!"
  end
  
  ap(result)
end

