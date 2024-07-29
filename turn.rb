#Here Turn class is defined 
#Turns class will require the question file to use the MathQuestion class
#It will set the states of player and @questions from the MathQuestion class
#It will define the method play which prompts a question and gets a players answer
#Then it will check the answer and prints out a message either for success or not 
#It will also call the lose_life if the answer is wrong, this will deduct one life from the lives of a player
require_relative "question"


class Turn 
    def initialize(player)
      @player = player
      @question = MathQuestion.new
    end
    def play
      puts @question.ask
      answer = gets.chomp.to_i

      if @question.check_answer(answer)
        puts "#{@player.name}: Yes! You are correct."
      else
        puts "#{@player.name}: Seriously? No!"

        @player.lose_life
      end
    end

end

