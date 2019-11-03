require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    attr_writer 

    def initialize(name,bank_account=25,happiness=8,hygiene=8)
        @name = name
        @bank_account = bank_account
        if happiness < 10 && happiness > 0 
         @happiness = happiness
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = 0
        end
        @hygiene = hygiene
    end

    def happiness=(happiness)
        if happiness <= 10 && happiness > 0 
            @happiness = happiness
           elsif happiness > 10
               @happiness = 10
           else
               @happiness = 0
           end
    end

    def hygiene=(hygiene)
        if hygiene <= 10 && hygiene > 0 
            @hygiene = hygiene
           elsif hygiene > 10
               @hygiene = 10
           else
               @hygiene = 0
           end    
    end

    def change_point (points, change_amount)
        new_point = points + change_amount
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
            return false
        end
    end

    def get_paid(salary)
        @bank_account = change_point(bank_account,salary)
        return "all about the benjamins"
    end  
    
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
          "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(other_person, topic)
        if topic == "politics"
            self.happiness -= 2
            other_person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            other_person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

stella = Person.new("Stella")
stella.happiness = 11
puts stella.happiness