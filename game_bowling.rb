class Bowling
  attr_accessor :tries, :tries2

  def initialize
    @number_pins
    @frames = []
    @tries = []
    @tries2 = []
  end

  def pins
    @number_pins = rand(0..10)
    diference = 10 - @number_pins
    @number_pins2 = rand(0..diference)
  end

  def tries
    score = 0

    10.times do
      pins
      @tries << @number_pins
      @tries2 << @number_pins2
    end

    points_total = 0

    @tries.each_with_index do |tries, index|
      if @tries[index] == 10
        puts "#{@tries[index]} || #{@tries2[index]}"
        puts "Frame #{index + 1} Strike"
        points = @tries[index].to_i + @tries2[index].to_i + strikes(tries, tries2,
                                                                    index) + position_after(tries, tries2, index)
        puts points
      elsif @tries[index] + @tries2[index] == 10
        puts "#{@tries[index]} || #{@tries2[index]}"
        puts "Frame #{index + 1} Spare"
        points = @tries[index].to_i + @tries2[index].to_i + spare(tries, tries2,
                                                                  index) + position_after(tries, tries2,
                                                                                          index)
        puts points
      else
        puts "Frame #{index + 1}"
        points = @tries[index].to_i + @tries2[index].to_i + position_after(tries, tries2, index)
        puts "#{@tries[index]} || #{@tries2[index]}"
      end
      points_total += points
      puts points_total
      puts '****'
    end
  end

  def position_after(_tries, _tries2, index)
    if index > 0
      @tries[index - 1].to_i + @tries2[index - 1].to_i
    else
      0
    end
  end

  def strikes(_tries, _tries2, index)
    @tries[index + 1].to_i + @tries2[index + 1].to_i
  end

  def spare(_tries, _tries2, index)
    @tries[index + 1].to_i
  end
end

Bowling.new.tries
