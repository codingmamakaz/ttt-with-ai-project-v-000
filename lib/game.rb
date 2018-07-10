require 'pry'

class Game
  attr_accessor :board, :player_1, :player_2

  WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Bottom row
  [0, 3, 6], #Left column
  [1, 4, 7], #Middle column
  [2, 5, 8], #Right column
  [0, 4, 8], #left diagonal
  [2, 4, 6]  #Right diagnal
]

  def initialize(player_1 = Players::Human.new(token = "X"), player_2 = Players::Human.new(token = "O"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  def current_player
    counter = 0
    self.board.cells.map do |cell|
      if cell == "X" || cell == "O"
        counter += 1
      end
    end
    counter
      if counter % 2 == 0
        player_1
      else
        player_2
      end
  end

  def won?
  end


end
