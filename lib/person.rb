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
     
    #   def name
    #     @name
    #   end

    #   def name=(new_name) 
    #     @name = new_name
    #   end

    #   def bank_account_balance
    #     @bank_account_balance
    #   end

    #   def bank_account_balance=(new_balance)
    #     @bank_account_balance = new_balance
    #   end

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
        hygiene_value = [[hygiene.to_i , 0].max , 10].min
        @hygiene_points = hygiene_value
      end
     
end 

Skyler = Person.new("Skyler" )

# binding.pry 

Skyler.bank_account_balance = 10000000
Skyler.hygiene_points = -10 
Skyler.happiness_points = -10 
Skyler.happiness_points = 100


puts Skyler.name 
puts Skyler.bank_account_balance 
puts Skyler.happiness_points 
puts Skyler.hygiene_points 

#Remi = new.Person 

