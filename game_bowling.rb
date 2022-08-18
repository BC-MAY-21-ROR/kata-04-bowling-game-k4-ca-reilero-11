class Bowling
    attr_accessor :tries, :tries2
    def initialize
        @number_pins
        @frames = []
        @tries = []
        @tries2 = [] 
    end

    def tries
        10.times do   

        @number_pins = rand(0..10)
        #puts @number_pins
        a = @number_pins
        b = 10 -a
        @number_pins2 = rand(0..b)
        c = @number_pins2
        
            #puts random1
            @tries << a

            #puts random2
            #puts random1 + random2
           
            @tries2 << c
          
        end
        puts @tries
        puts "*"
        puts @tries2
        
    end
end

class Frames
    def initialize
        @tries
        @tries2
    end
    def number_frames()
       @tries.index(0) + @tries2.index(0)
    end
end 


Bowling.new.tries
Frames.new.number_frames
