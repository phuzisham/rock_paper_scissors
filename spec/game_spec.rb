require('rspec')
require('game')
require('pry')

describe('#beats') do
  rockEx = Game.new('rock')
  paperEx = Game.new('paper')
  scissorsEx = Game.new('scissors')

  it("returns tie message if object and argument are equal") do
    expect(paperEx.beats("paper")).to(eq("Tie"))
  end

  it('returns true if rock is the object and scissors is the argument') do
    expect(rockEx.beats('scissors')).to(eq(true))
  end

  it('returns true if scissors is the object and paper is the argument') do
    expect(scissorsEx.beats('paper')).to(eq(true))
  end

  it('returns true if paper is the object and rock is the argument') do
    expect(paperEx.beats('rock')).to(eq(true))
  end

  it('returns false if paper is the object and scissors is the argument') do
    expect(paperEx.beats('scissors')).to(eq(false))
  end
end
