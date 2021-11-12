# 1. Require all other files
require './game'
require './turn_counter'
require './question'
require './player'

# 2. Initialize the game and players
game = Game.new
player1 = Player.new(1)
player2 = Player.new(2)

# 3. Set variables
turn_number = 1

# 4. Create the game loop
until player1.lives == 0 || player2.lives == 0 do
  p_act = game.active_player(turn_number)

  if p_act == 1
    game.turn_instance(turn_number, player1)
  elsif p_act == 2
    game.turn_instance(turn_number, player2)
  end

  puts "P1:#{player1.lives} vs P2:#{player2.lives}"

  turn_number += 1
end

# 5. Determine a winner
if player1.lives == 0 
  puts "Player 2 wins with a score of #{player2.lives}/3"
elsif player2.lives == 0
  puts "Player 1 wins with a score of #{player1.lives}/3"
end

# 6. Provide visual confirmation that the game has ended
puts "------- Game Over -------"
puts "Goodbye!"