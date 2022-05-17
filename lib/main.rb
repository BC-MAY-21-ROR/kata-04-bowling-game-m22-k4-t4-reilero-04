# frozen_string_literal: true

# Class Bowling
class Bowling
  def intialize(_roll)
    @roll = 0
    @total_rolls = Array.new(20,0)
  end

  def tiro 
    @total_rolls = 2.times { |roll| rand(0...10) }
  end

  def frame_points
    frame_score = 0
  end

  def global_points; end
end

test = Bowling.new

puts test.tiro.inspect