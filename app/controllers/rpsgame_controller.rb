class RpsgameController < ApplicationController

  def home
    render({:template => "layouts/home"})
  end

  def play_rock_paper_scissors(player_choice)
    choices = ["rock", "paper", "scissors"]
    @computer_choice = choices.sample
  
    if player_choice == @computer_choice
      result = "We tied"
    elsif (player_choice == "rock" && @computer_choice == "scissors") ||
          (player_choice == "paper" && @computer_choice == "rock") ||
          (player_choice == "scissors" && @computer_choice == "paper")
      result = "We won"
    elsif choices.include?(player_choice)
      result = "We lost"
    else
      result = "Invalid choice. Please choose Rock, Paper, or Scissors."
    end
  
    return result 
  end
  

  def rock
    @player_choice = "rock"
  
    @result = play_rock_paper_scissors(@player_choice)
    render( {:template => "game_templates/rock"})
  end

  def paper
    @player_choice = "paper"
  
   @result = play_rock_paper_scissors(@player_choice)
    render({ :template => "game_templates/paper"})
  end

  def scissors
    @player_choice = "scissors"

    @result = play_rock_paper_scissors(@player_choice)
    render({ :template => "game_templates/scissors"})
  end

end
