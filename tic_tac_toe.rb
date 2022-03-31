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

    board = [[],[],[]]
    turn = 1
    shape = "O"
    game_end = true

    def playing_board
       puts "\t 1     2     3"
       puts "    1 |  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}  |"
       puts "_________________________"
       puts "    2 |  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}  |"
       puts "_________________________"
       puts "    3 |  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}  |"
    end

    def play_game

        game_end = false


    end

end