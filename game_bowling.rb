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
        puts "Intento 1"
        puts @tries
        puts "Intento 2"
        puts @tries2
        puts "Score 1"
        puts @tries[0] + @tries2[0]
      
        @tries.each_with_index do |tries, index| 
            if @tries[index] == 10
                puts "Puntaje con strike #{index + 1}"
                puts @tries[index].to_i + @tries2[index].to_i + @tries[index + 1].to_i + @tries2[index + 1].to_i
            else if @tries[index] + @tries2[index] == 10
                    puts "Puntaje con spare #{index + 1}"
                    puts @tries[index].to_i + @tries2[index].to_i + @tries[index + 1].to_i
            else
            puts "puntaje #{index + 1}" 
            puts @tries[index] + @tries2[index] 
            puts "****"
            end
        end
        end
    end 
  end
  
  
    
  
  
  Bowling.new.tries

    


Bowling.new.tries

