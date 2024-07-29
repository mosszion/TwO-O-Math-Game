#This is a question file where the MathQuestion class is found
#MathQuestion class responsiblity is to generate two random numbers below 20, ask thier addition and check the result 
#This class initialized three variables i.e @num1, @num2 and @correct_answer
#Randomly generated numbers will be saved into @num1 and @num2
#While their addition will be placed inside the variable @current_answer
# And ask method is defined to return a prompt asking the addition of those rundom numbers
#Also check_answer method is defined to check the answer taken from the players to the correct answer

class MathQuestion
    attr_accessor :num1, :num2, :correct_answer
    def initialize 
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @correct_answer = @num1 + @num2
    end

    def ask
        "What does #{@num1} plus #{@num2} equal?"
    end

    def check_answer(answer)
       answer == @correct_answer
          
    end

end

question1 = MathQuestion.new
puts question1.ask
puts question1.num1
puts question1.num2
puts question1.correct_answer
puts question1.check_answer(5)
