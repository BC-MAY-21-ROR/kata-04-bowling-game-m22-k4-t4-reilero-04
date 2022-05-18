# frozen_string_literal: true

class Rules
  def initialize
    @total_points = 0
    @global = []
  end

  def strike?
    @strike
  end
end
