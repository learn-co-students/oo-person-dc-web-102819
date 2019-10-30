# your code goes here

require 'pry'

# your code goes here
class Person 
    
    attr_accessor :name , :bank_account

    def initialize(name , bank_account=25, happiness=8 , hygiene=8) 
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        # binding.pry 
      end

      def happiness
        @happiness_points
      end

      def happiness=(new_happy_points)
        happiness = [[new_happy_points.to_i , 0].max , 10].min
        @happiness = happiness
      end

      def hygiene
        @hygiene
      end

      def hygiene=(hygiene_points)
        hygiene = [[hygiene_points.to_i , 0].max , 10].min
        @hygiene = hygiene
      end

      def clean?
        if hygiene >7 
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


Skyler.bank_account = 10000000
Skyler.hygiene = -10 
Skyler.happiness = -10 
Skyler.happiness = 100

Skyler.name = "John"
puts Skyler.name 
puts Skyler.bank_account
puts Skyler.happiness
puts Skyler.hygiene
#puts "My hygiene points are #{}"



#Remi = new.Person 

