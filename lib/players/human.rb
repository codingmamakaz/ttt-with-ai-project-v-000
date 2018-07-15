module Players
  class Human < Player

    attr_accessor :cells, :token

    # def initialize(token = nil)
    #   @token = token
    # end

    def move(board)
      board = gets.strip
      board
    end

  end
end
