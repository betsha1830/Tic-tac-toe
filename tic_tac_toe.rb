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

    def initialize ()
        @playerOne = "X"
        @playerTwo = "O"
        @board = [[],
                  [],
                  []]
    end

end