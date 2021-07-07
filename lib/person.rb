class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
        def initialize(new_name)
            @name = new_name
            @bank_account = 25
            @happiness = 8
            @hygiene = 8    
        end
        
        def happy?
            if @happiness > 7
                true
            else
                false    
            end
        end
    
        def clean?
            if @hygiene > 7
                true
            else
                false    
            end
        end
    
        def get_paid(paycheck)
            @bank_account = @bank_account + paycheck
            "all about the benjamins"
        end
    
        def take_bath
            self.hygiene = self.hygiene + 4
            if self.hygiene > 10
                self.hygiene = 10
            end
            "♪ Rub-a-dub just relaxing in the tub ♫"
        end

        def happiness=(num)
            if num > 10
                @happiness = 10
            elsif num < 0
                @happiness = 0
            else @happiness = num
            end
        end

        def hygiene=(num)
            if num > 10
                @hygiene = 10
            elsif num < 0
                @hygiene = 0
            else @hygiene = num
            end
        end
    
        def work_out
            self.happiness = self.happiness + 2
            self.hygiene = self.hygiene - 3
            "♪ another one bites the dust ♫"
        end
    
        def call_friend(friend)
            self.happiness = self.happiness + 3
            if self.happiness >10
                self.happiness = 10
            end
            friend.happiness = friend.happiness + 3
            if friend.happiness >10
                friend.happiness = 10
            end
            "Hi #{friend.name}! It's #{self.name}. How are you?"
        end
    
        def start_conversation(friend,topic)
            if topic == "politics"
                self.happiness = self.happiness - 2
                if self.happiness < 0
                    self.happiness = 0
                end
                friend.happiness = friend.happiness - 2
                if friend.happiness < 0
                    friend.happiness = 0
                end
                "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness = self.happiness + 1
                if self.happiness > 10
                    self.happiness = 10
                end
                friend.happiness = friend.happiness + 1
                if friend.happiness > 10
                    friend.happiness = 10
                end
                "blah blah sun blah rain"
            else "blah blah blah blah blah"
            end
    
        end
    
    
    end
    
    
    