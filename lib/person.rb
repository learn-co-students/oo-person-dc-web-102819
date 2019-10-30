# your code goes here

require 'pry'

# your code goes here
class Person 
    
    attr_reader :hygiene
    attr_accessor :bank_account

    def initialize(name , bank_account=25, happiness=8 , hygiene=8) 
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        #binding.pry 
      end
     
      def name
        @name
      end

      def happiness
        @happiness
      end

      def happiness=(new_happy_points)
        happiness = [[new_happy_points.to_i , 0].max , 10].min
        @happiness = happiness
      end

      def hygiene=(hygiene_points)
        if hygiene_points >10 
          @hygiene = 10
        elsif hygiene_points <= 0
          @hygiene = 0
        else @hygiene = hygiene_points 
        end 
      end

      def clean?
        if hygiene >7 
          return true
        else 
          return false
      end
    end

      def happy?
        if happiness > 7
          return true
        else 
          return false
       end
      end

     def get_paid(salary)
     @bank_account = @bank_account + salary
     return "all about the benjamins"
     end 


      def take_bath
        self.hygiene = self.hygiene + 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
      end

      def work_out 
        @happiness = @happiness + 2 
        self.hygiene = self.hygiene - 3 
        return "♪ another one bites the dust ♫"
      end

      # def call_friend
      # end

      # def start_conversation
      # end

     
end 


Skyler = Person.new("Skyler" )
