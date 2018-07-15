module Players
  class Computer < Player

    attr_accessor :token

    def initialize(token = nil)
      @token = token
    end

    def move(board)
      if board.position(5)
        return "5"
      end
    end
  
  end


end
