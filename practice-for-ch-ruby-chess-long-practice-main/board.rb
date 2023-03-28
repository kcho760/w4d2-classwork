require_relative "piece"

class Board


    def initialize
        @rows = Array.new(8) { Array.new(8, Piece.new(color, board, pos))}

        # @null_piece = Null_piece.new()
    end

    def [](position)
        row , col = position 
        @rows[row][col]
    end 

    def []=(position,value)
        row, col = position 
        @rows[row][col] = value 
    end 

    def move_piece(start_pos,end_pos)
        if self[start_pos].nil?
            raise "there is no piece"
        end
        if !self[end_pos].nil?
            raise "there is a piece there"
        end
    
        # self[start_pos] = nil
        # self[end_pos] = start
        

        self[start_pos],self[end_pos] = self[end_pos],self[start_pos]
    end



    def fill_rows 
        @rows

    end 
end 