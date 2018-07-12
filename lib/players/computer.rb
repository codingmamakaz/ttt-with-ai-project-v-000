module Players
  class Computer < Player

    attr_accessor :token

    def initialize(token = nil)
      @token = token
    end

    def move(board)
      board = gets.strip
    end

  end
end
