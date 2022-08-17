class Bowling
    def initialize
        @number_pins
        @frames = [] 
    end

    def random
        @number_pins = rand(0..10)
        puts @number_pins
    end  
    def frame
        10.times do       
            @frames << random
        end
        puts @frames.join('')
    end

end


Bowling.new.frame