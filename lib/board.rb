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
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end

  def position(input)
    input = input.to_i - 1
    self.cells[input]
  end

  def full?
    self.cells.all? do |cell|
      if cell != " "
        true
      end
    end
  end

  def turn_count
    self.cells.count do |cell|
       cell == "X" || cell == "O"
    end
  end

  def taken?(input)
    if position(input) == "X" || position(input) == "O"
      true
    else
      false
    end
  end

  def valid_move?(input)
    if input.to_i.between?(1, 9) && !taken?(input)
      true
    else
      false
    end
  end

  def update(num, player)
    num = num.to_i - 1
    self.cells[num] = player.token
  end

end
