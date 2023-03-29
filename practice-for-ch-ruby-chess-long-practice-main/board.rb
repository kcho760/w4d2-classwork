require_relative "piece"

class Board
    attr_accessor :rows 

    def initialize
        @rows = Array.new(8) { Array.new(8, Piece.new())}
        (2..5).each do |i|
            (0..7).each do |j|
                @rows[i][j] = Nullpiece.new
            end
        end
        # @null_piece = Null_piece.new()
    end

    def [](position)
        row , col = position 
        @rows[row][col]
    end 

    def []=(position,piece)
        row, col = position 
        @rows[row][col] = piece 
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

end 