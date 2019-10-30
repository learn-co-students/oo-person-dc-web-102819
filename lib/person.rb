# your code goes here

require 'pry'

# your code goes here
class Person 
    
    attr_accessor :name , :bank_account_balance

    def initialize(name , bank_account_balance=25, happiness_points=8 , hygiene_points=8) 
        @name = name
        @bank_account_balance = bank_account_balance
        @happiness_points = happiness_points
        @hygiene_points = hygiene_points
        # binding.pry 
      end

      def happiness_points
        @happiness_points
      end

      def happiness_points=(new_happy_points)
        happiness_value = [[new_happy_points.to_i , 0].max , 10].min
        @happiness_points = happiness_value
      end

      def hygiene_points
        @hygiene_points
      end

      def hygiene_points=(hygiene)
        self.hygiene_value = [[hygiene.to_i , 0].max , 10].min
        @hygiene_points = hygiene_value
      end

      def clean(hygiene_points)
        if hygiene_points >7 
          return true
        else 
          return false
      end
    end

      #def happy()
      # end

      # def take_bath
      # end

      # def work_out
      # end

      # def call_friend
      # end

      # def start_conversation
      # end

     
end 


Skyler = Person.new("Skyler" )



#final_hygiene = clean(Skyler.hygiene_points)


Skyler.bank_account_balance = 10000000
Skyler.hygiene_points = -10 
Skyler.happiness_points = -10 
Skyler.happiness_points = 100

Skyler.name = "John"
puts Skyler.name 
puts Skyler.bank_account_balance 
puts Skyler.happiness_points 
puts Skyler.hygiene_points 
#puts "My hygiene points are #{}"



#Remi = new.Person 

