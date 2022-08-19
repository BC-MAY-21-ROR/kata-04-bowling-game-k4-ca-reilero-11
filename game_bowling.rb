class Bowling
  def initialize
    @tries = []
    @tries2 = []
  end

  def pins
    @number_pins = rand(0..10)
    diference = 10 - @number_pins
    @number_pins2 = rand(0..diference)
  end

  def tries
    10.times do
      pins
      @tries << @number_pins
      @tries2 << @number_pins2
    end

    points_total = 0

    @tries.each_with_index do |_tries, index|
      try = @tries[index]
      try2 = @tries2[index]

      if try == 10
        puts "Frame #{index + 1} Strike"
        puts "#{try} || #{try2}"
        points = strikes(index) + sum_points(index)
        puts points
      elsif try + try2 == 10
        puts "Frame #{index + 1} Spare"
        puts "#{try} || #{try2}"
        points = spare(index) + sum_points(index)
        puts points
      else
        puts "Frame #{index + 1}"
        points = sum_points(index)
        puts "#{try} || #{try2}"
      end
      points_total += points
      puts points_total
      puts '****'
    end
  end

  def position_after(index)
    if index.positive?
      @tries[index - 1] + @tries2[index - 1]
    else
      0
    end
  end

  def sum_tries(index)
    @tries[index] + @tries2[index]
  end

  def strikes(index)
    @tries[index + 1].to_i + @tries2[index + 1].to_i
  end

  def spare(index)
    @tries[index + 1].to_i
  end

  def sum_points(index)
    sum_tries(index) + position_after(index)
  end
end

Bowling.new.tries
