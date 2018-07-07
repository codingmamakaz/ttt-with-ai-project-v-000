require "pry"

class Board

  attr_accessor :cells

  def reset!
    cells.clear
    self.cells = Array.new(9, " ")

  end

  def initialize
    @cells = cells
    self.cells = Array.new(9, " ")
  end

  def display
    board = self.cells
    puts board.to_a
  end
  #
  # expected "X\nX\nX\nX\nO\nO\nX\nO\nO\n" to include " X | X | X "
  # have to figure out how to get rid of \n and replace with |

end
