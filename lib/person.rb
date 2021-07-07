# your code goes here

#create Person Class
class Person

attr_reader :name, :happiness, :hygiene

attr_accessor :bank_account

#initialize person class with name (constant), 
#bank account with inital amount of 25 (no max or min)
#happiness points initial amount of 8 (max 10, min 0)
#hygiene points initial amount of 8 (max 10, min 0)
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(happiness)
        if happiness <= 10 && happiness >= 0
            @happiness = happiness
        elsif happiness > 10
            @happiness = 10
        else 
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        if hygiene <= 10 && hygiene >= 0
            @hygiene = hygiene
        elsif hygiene > 10
            @hygiene = 10
        else 
            @hygiene = 0
        end
    end
#Create happy? method: return true if happiness > 7        
    def happy?
        return @happiness > 7    
    end
#Create clean? method: return true if happiness > 7
    def clean?
        return @hygiene > 7
    end
#Create get_paid method: Accepts salary and adds to bank account.
#return "All about the benjamins."
    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
    #Create take_bath method: add 4 to hygiene.
    #return "Rub-a-dub just relaxing in teh tub"
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
    #Create work_out method: add 2 to happiness,
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    #subtract 3 from hygiene,
    #return "Another one bites the dust"
    end
    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    #Create call_friend method: accept another instance of same class
    #add 3 to happiness
    #return "Hi {friend}! It's {person}. How are you?"
    end
    def start_conversation(friend, topic)
    #Create start_conversation method: accept friend and topic
        if topic == "politics"
            #If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather" 
            #If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"            
        else
            #If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah #blah         #blah blah".
            return "blah blah blah blah blah"
            #return conversation based on topic.
        end
    end
end