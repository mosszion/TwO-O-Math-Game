#This is Player class which sets state nd behavior of players, check thier lives left
#Initializes the state of name and lives(which lets every player to start with three lives)
#Defines lose_life method where when a player misses the correct answer losses life
#Defines alive method where it checks how many lives has each player left with

class Player 
  attr_accessor :name, :lives
  def initialize(name, lives = 3)
      @name = name
      @lives = lives

  end
  def lose_life
      @lives -= 1
  end 
  def alive?
      @lives > 0 
  end
end

