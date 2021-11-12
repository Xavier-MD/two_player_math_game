class Game

  def active_player (turn_num)
    if turn_num % 2 == 1
      active_player_id = 1
    elsif turn_num % 2 == 0
      active_player_id = 2
    end
    return active_player_id
  end

  def turn_instance (id, active_player)
    question = Question.new(id)

    puts "------- TURN #{id} -------"
    puts "#{active_player.name}, what does #{question.n1} plus #{question.n2} equal?"

    active_player.response = gets.chomp.to_i

    if active_player.response == question.answer
      puts "NICE, you got it correct!"
    elsif active_player.response != question.answer
      puts "Come on... you can do better than that."
      active_player.lives -= 1
    end
  end
end