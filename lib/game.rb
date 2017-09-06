#!/usr/bin/env ruby

class Game
  def initialize(player1)

  end

  def beats()
    player1  = @player1

    moves = ['rock', 'paper', 'scissors']
    p2 = moves.sample()

    if (p2 === player1)
     puts 'It\'s A Tie'
    elsif (p2 === "scissors" && player1 === 'rock')
      true
      puts 'You Win'
    elsif (p2 === "paper" && player1 === 'scissors')
      true
      puts 'You Win'
    elsif (p2 === "rock" && player1 === 'paper')
      true
      puts 'You Win'
    else
      false
      puts 'You Lose'
    end
  end
end

puts "Player1 choose either rock, paper, or scissor."
player1 = gets.chomp
newGame = Game.new(player1)
newGame.beats()
