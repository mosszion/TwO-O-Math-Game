#Here will the MainGame class logic be implemented 
#The MainGame class will control all the other class and require them as needed
#The logis follows this steps: 
# 1) Once the file run , there will be a prompt with a message to guess the addition of two random numbers
# 2) Players will be let to type in thier guess and hit enter
# 3) Then it will check if the players guess is correct 
# 4) On correct answer it will print a success message while on miss a different message
# 5) Players will contiue playing untill one player losses all three lives 
# 6) Once reached to all loss stage , it will print the result and winner of the game

# import the file player to get the Player class
require_relative "player"
require_relative"turn"

class MainGame
    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @current_player = @player1
    end


###Define the working logic of the MainGame class

 def start
   until game_over?
      play_turn
      switch_player
   end
   announce_winner
 end
#define a method to check whose turn it is 
   def play_turn 
      turn = Turn.new(@current_player)
      turn.play
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3!"
   end

   # define a method to switch a player after attempt

   def switch_player
      puts "------New Turn--------"
      @current_player = @current_player == @player1 ? @player2 : @player1
   end

   # Method for game over 

   def game_over?
      !@player1.alive? || !@player2.alive?
   end
   # Method for announcing the winner
   def announce_winner
      if @player1.alive?
         puts "#{@player1.name} wins with the score of #{@player1.lives}/3!"
         elsif @player2.alive?
            puts "#{@player2.name} wins with the score of #{@player2.lives}/3!" 
         end
         puts "---------------GAME OVER------------------"
         puts "GOOD BYE!"
   end

end

game = MainGame.new
game.start