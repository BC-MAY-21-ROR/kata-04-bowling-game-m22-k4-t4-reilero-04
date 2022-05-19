# frozen_string_literal: true

require_relative 'turn'

# Class Rules
class Rules
  def initialize
    @total_points = 0
    @global = []
    @score=Array.new() {}


  end

  def first_frame
    @frame = Turn.new
    puts @frame.first_ball
    puts @frame.second_ball
    puts @frame.turn_completed
    @frame.strike?
    @frame.spare?
     @score<<[@frame.first_ball,@frame.second_ball,@frame.turn_completed]
  end

  def start_game
    10.times { first_frame }
    return @score.inspect
  end
end

test = Rules.new

puts test.start_game
