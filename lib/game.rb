class Game
  def initialize(move)
    @move = move
  end

  def beats(p2)

    if (p2 === @move)
     'Tie'
    elsif (p2 === "scissors" && @move === 'rock')
      true
    elsif (p2 === "paper" && @move === 'scissors')
      true
    elsif (p2 === "rock" && @move === 'paper')
      true
    else
      false
    end
  end
end
