# frozen_string_literal: true

require_relative 'turn'

# Class Rules
class Rules
  def initialize
    @total_points = 0
    @global = []
    @score = Array.new {}
  end

  def first_frame
    @frame = Turn.new
    puts @frame.first_ball
    puts @frame.second_ball
    puts turn_completed = @frame.turn_completed
    @score << [turn_completed]
    puts @frame.strike?
    puts @frame.spare?
  end

  def start_game
    10.times { first_frame }

    @score.flatten.inject(:+).inspect
  end
end

test = Rules.new

puts test.start_game
