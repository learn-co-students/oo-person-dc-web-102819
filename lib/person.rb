# your code goes here

require 'pry'

class Person
attr_accessor :bank_account 
attr_reader :name, :hygiene , :happiness
     @@all =[]
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8 )
        @name=name
        @bank_account=bank_account
        self.happiness = happiness
        self.hygiene= hygiene
        @@all <<self
    end

    def happiness=(happiness_level)
       if happiness_level.between?(0, 10)
        @happiness = happiness_level
       elsif happiness_level >10
        @happiness =10
       elsif happiness_level < 0
        @happiness =0
       end
    end

    def hygiene=(hygiene_level)
        if hygiene_level.between?(0, 10)
            @hygiene = hygiene_level
            elsif hygiene_level > 10
                @hygiene = 10
                elsif hygiene_level < 0
                    @hygiene = 0
                end
        
    end

    def self.all
        @@all
    end 


    def clean?
        if @hygiene > 7 
            return true
        else
             return false
        end

    end

    def happy?
        if @happiness > 7 
            return true
        else
            false
        end
            
    end

    def get_paid(salary)
        @bank_account +=salary
        return "all about the benjamins"
    end

    def take_bath
        
       self.hygiene=(@hygiene+4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness += 2)
        self.hygiene=(@hygiene -= 3)
        puts "♪ another one bites the dust ♫"
     end
     
        
     def call_friend(friend)
        
        @happiness +=3
        friend.happiness += 3
       puts "Hi #{friend.name}! It's #{@name}. How are you?"
     end
end




   marija =Person.new("Marija",25,14, 814)
   felix = Person.new("Felix")
#    print marija.get_paid(500)
#    print marija.clean?
#    print marija.work_out
#    print marija.take_bath
#    print marija.happy?
   
   print Person.all

    

   
   
   
   
  


