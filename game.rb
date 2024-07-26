class Game
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_turn = @player1
    start_game
  end

  def start_game
    while !gameover?
      player_turn
      switch_player_turn
    end

    winner
  end

  def player_turn
    question = Question.new
    puts "#{current_turn.name}: #{question.current_question}"

    answer = gets.chomp.to_i

    if question.lookup_answer(answer)
      puts "#{current_turn.name}: YES! You are correct!"
    else 
      puts "#{current_turn.name}: Seriously? No!"
      current_turn.decr_life
    end

    score
  end

  def gameover?
    @player1.dead? || @player2.dead?
  end

  def score
    puts "P1: #{@player1.remaining_lives}/3 vs P2: #{@player2.remaining_lives}/3"
  end

  def winner
    if @player1.dead?
      loser = "Player 1"
      winner = "Player 2"
      winner_score = @player2.remaining_lives
    else
      loser = "Player 2"
      winner = "Player 1"
      winner_score = @player1.remaining_lives
    end
  
    puts "#{winner} wins with a score of #{winner_score}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def switch_player_turn
    @current_turn = (@current_turn == @player1) ? @player2 : @player1
  end

  def current_turn
    @current_turn
  end
end
