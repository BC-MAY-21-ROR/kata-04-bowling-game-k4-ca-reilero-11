class Bowling
    def initialize
        @number_pins
        @frames = []
        @tries = []
        @tries2 = [] 
    end

    def random
        @number_pins = rand(0..10)
        puts @number_pins
    end  
    def tries
        
        10.times do     
            @tries << random
            count = 0

            if @tries != 10    
                @tries2 << random

                if (@tries[count] + @tries2[count]) <= 10
                    @tries2 << random
                end
                puts @tries2.join

            else
                @tries2 = 0
            end
            count += 1
        end
        puts @tries.join
    end
end


Bowling.new.tries