module Players
  class Computer < Player

    def move(board)
      move = nil
      
      if !board.taken?(5) 
        move = "5"

      elsif !board.taken?(9)
        move = "9"
        
        
      end
    end

  end
end