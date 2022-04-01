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
    @board = [['', '', ''], ['', '', ''], ['', '', '']]
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
    temp_arr = input.split('')
    input_position = []
    temp_arr.each { |item| input_position.push(item.to_i) }
    temp_arr = []
    until @board[input_position[0]][input_position[1]] == ''
      puts 'Position already taken. Input another field.'
      input = gets.chomp
      temp_arr = input.split('')
      input_position = []
      temp_arr.each { |item| input_position.push(item.to_i) }
      temp_arr = []
    end
    @board[input_position[0]][input_position[1]] = @shape
    @turn += 1
  end

  def check_game
    @board.each do |item|
      if item.all?(@shape)
        puts "#{@shape} wins."
      end
      @game_end = true
    end
    if ((@board[0][0] == @board[1][0]) && @board[0][0] == @board[2][0])
        game_end = true
        puts "#{@shape} wins."
    elsif ((@board[0][1] == @board[1][1]) && @board[0][1] == @board[2][1])
        game_end = true
        puts "#{@shape} wins."
    elsif ((@board[0][2] == @board[1][2]) && @board[0][2] == @board[2][2])
        game_end = true
        puts "#{@shape} wins."
    elsif ((@board[0][0] == @board[1][1]) && @board[0][0] == @board[2][2])
        game_end = true
        puts "#{@shape} wins."
    elsif ((@board[1][2] == @board[1][1]) && @board[1][2] == @board[2][0])
        game_end = true
        puts "#{@shape} wins."
    end
  end

  def play_game
    game_end = false
  end
end

x = TicTacToe.new
puts x.move
puts x.check_game
