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

      elsif board.turn_count == 6 && (board.position(4) == board.position(6) || board.position(2) == board.position(8))
        move = "6"

      else
        Game::WIN_COMBINATIONS.detect do |comp|

          if comp.select{|i| board.position(i+1) == token}.size == 2 && comp.any?{|i| board.position(i+1) == " "}
            move = comp.select{|i| !board.taken?(i+1)}.first.to_i.+(1).to_s

          elsif cmb.select{|i| board.position(i+1) != " " && board.position(i+1) != token}.size == 2 && cmb.any?{|i| board.position(i+1) == " "}
            move = cmb.select{|i| !board.taken?(i+1)}.first.to_i.+(1).to_s
          end

        end


      end
    end

  end
end
