class Turno
  def initialize
    @first_roll = 0
    @second_roll = 0
    @total = 0
    @strike = false
    @spear = false
  end

  def first_ball
    @first_roll = rand(0...10)
  end

  def second_ball
    restantes = 10 - @first_roll
    @second_roll = 1 + rand(restantes)
  end

  def turn_completed
    @total = @first_roll + @second_roll
  end

  def strike?
    @strike = true if @first_roll == 10 || @second_roll == 10
    puts "strike = #{@strike}"
  end

  def spare?
    @spare = true if @total == 10
    puts "spare = #{@spare}"
  end
end

#test = Turno.new()

#puts test.first_ball
#puts test.second_ball
#puts test.turn_completed
#test.strike?
#test.spare?