# frozen_string_literal: true

require_relative 'turno'

# Class Rules
class Rules
  def initialize
    @total_points = 0
    @global = []
    @frame = frame
  end

  def first_frame
    @frame = Turn.new
    puts @frame.first_ball
    puts @frame.second_ball
    puts @frame.turn_completed
    @frame.strike?
    @frame.spare?
  end

  def start_game
    10.times { first_frame }
  end
end

test = Rules.new

test.start_game.inspect
