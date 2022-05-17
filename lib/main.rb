# frozen_string_literal: true

# variable global
total_frame = 10
# Class Bowling
class Bowling
  def intialize(_roll)
    @roll = 0
    @total_rolls = []
  end

  def tiro
    total_rolls=0
    @tiro=rand(0..11) #primer tiro
    resto=10-@tiro
     2.times do
      if resto>0
            @tiro=rand(0..resto)
      total_rolls=@tiro+total_rolls
      end
     puts @tiro
     end
     puts total_rolls
     total_frame
  end



  def total_frame
    total_frame = total_frame - 1
    puts "mesnos un frame #{total_frame}"

  end

  def strike
    strike = 10

  end

  def frame_points
    frame_score = 0
  end

  def global_points; end
end

test = Bowling.new

test.tiro
