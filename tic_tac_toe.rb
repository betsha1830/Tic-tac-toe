# frozen_string_literal: true
# PROBLEM
# Create a TicTacToe game
# (Consists of two players taking turn, a playing board, filling out the board in a number of ways to win the game)

# CASES
# 1- Print out game board after each move
# 2- Be able to start a new game when game ends on a draw or loss.

# SOLUTION
# 1- Create a class to instantiate player
# 2- Create a Tictactoe class to
#   2.1- Playing board
#   2.2- Turn
#   2.3- Check if game is over and determine the winner
#   2.4- Prompt user if they want to play again.

class TicTacToe
  def initialize
    @board = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    @turn = 1
    @shape = 'O'
    @game_end = true
  end

  def playing_board
    puts "\t 1     2     3"
    puts "    1 |  #{@board[0][0]}  |  #{@board[0][1]}  |  #{@board[0][2]}  |"
    puts '    _____________________'
    puts "    2 |  #{@board[1][0]}  |  #{@board[1][1]}  |  #{@board[1][2]}  |"
    puts '    _____________________'
    puts "    3 |  #{@board[2][0]}  |  #{@board[2][1]}  |  #{@board[2][2]}  |"
  end

  def move
    @shape = (@turn % 2).even? ? 'X' : 'O'
    puts "It's #{@shape}'s turn."
    input = gets.chomp

    until (input.match(/[1-3][1-3]/))
      puts "Invalid input. Please enter a number within the range of 1-3."
      input = gets.chomp
    end

    temp_arr = input.split('')
    @input_position = []
    temp_arr.each { |item| @input_position.push(item.to_i) }
    temp_arr = []
    until @board[@input_position[0]-1][@input_position[1]-1] == " "
      puts 'Position already taken. Input another field.'
      input = gets.chomp
      temp_arr = input.split('')
      @input_position = []
      temp_arr.each { |item| @input_position.push(item.to_i) }
      temp_arr = []
    end
    @board[@input_position[0]-1][@input_position[1]-1] = @shape
    @turn += 1
  end

  def check_game

    # CASES
    # 1- Check game if it's a tie or in it ended with a win/loss.

    # Horizontal Check
    if (@board[0][0] == @shape && @board[0][1] == @shape && @board[0][2] == @shape)
      @game_end = true
      puts "#{@shape} wins."
    elsif (@board[1][0] == @shape && @board[1][1] == @shape && @board[1][2] == @shape)
      @game_end = true
      puts "#{@shape} wins."
    elsif (@board[2][0] == @shape && @board[2][1] == @shape && @board[2][2] == @shape)
      @game_end = true
      puts "#{@shape} wins."

    # Vertical Check

    elsif (@board[0][0] == @shape && @board[1][0] == @shape && @board[2][0] == @shape)
      @game_end = true
      puts "#{@shape} wins."
    elsif (@board[0][1] == @shape && @board[1][1] == @shape && @board[2][1] == @shape)
      @game_end = true
      puts "#{@shape} wins."
    elsif (@board[0][2] == @shape && @board[1][2] == @shape && @board[2][2] == @shape)
      @game_end = true
      puts "#{@shape} wins."

      # Diagonal Check

    elsif (@board[0][0] == @shape && @board[1][1] == @shape && @board[2][2] == @shape)
      @game_end = true
      puts "#{@shape} wins."
    elsif (@board[0][2] == @shape && @board[1][1] == @shape && @board[2][0] == @shape)
      @game_end = true
      puts "#{@shape} wins."
    end

    counter = 0

    @board.each do |item|
      counter += 1 if !(item.any?(" "))
    end
    
    if (counter == 3)
      @game_end = true
      puts "Game ended in a tie."
    end

  end

  def play_game
    @game_end = false
    until @game_end == true
        playing_board
        move
        check_game
    end
    if (@game_end == true)
      puts "Do you want to start a new game? y/n"
      input = gets.chomp
      if (input.downcase == "y")
        initialize
        play_game
      else return "Ciao!"
      end
    end
  end
end

x = TicTacToe.new
puts x.play_game