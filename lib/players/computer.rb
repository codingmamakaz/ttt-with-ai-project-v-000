module Players
  class Computer < Player

    attr_accessor :token

    def initialize(token = nil)
      @token = token
    end

    def move(board)
      if !board.cells.taken?(6)
        valid_move?(6)
      end
    end

  end
end
