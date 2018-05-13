module Players
  class Computer < Player

    def move(board)
      move = nil

      if !board.taken?(5)
        move = "5"

      elsif board.turn_count == 9
        move = "9"

      elsif board.turn_count == 4
        move = [1, 3, 7, 9].detect { |m| !board.taken?(m)}.to_s



      end
    end

  end
end
