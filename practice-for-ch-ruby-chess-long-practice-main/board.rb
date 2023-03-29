require_relative "piece"

class Board
    attr_accessor :rows 

    def initialize
        @rows = Array.new(8) { Array.new(8)}
        # (0..7).each do |i|
        #     (0..7).each do |j|
        #         @rows[i][j] = Queen.new(:Black,@rows,[i,j])
        #     end
        # end 
        # (2..5).each do |i|
        #     (0..7).each do |j|
        #         @rows[i][j] = Null_piece.new 
        #     end
        # end 
        # @rows[1].each { |ele| ele = Pawn.new }
        # @rows[6].each { |ele| ele = Pawn.new }
        
        # (0..7).each do |j|
        #     if j == 0 
        #         @rows[0][j] = Rook.new
        #         @rows[7][j] = Rook.new
        #     end 
        #     if j == 1 
        #         @rows[0][j] = Knight.new
        #         @rows[7][j] = Knight.new
        #     end 
        #     if j == 2 
        #         @rows[0][j] = Bishop.new
        #         @rows[7][j] = Bishop.new
        #     end 
        #     if j == 3 
        #         @rows[0][j] = Queen.new
        #         @rows[7][j] = King.new
        #     end 
        #     if j == 4 
        #         @rows[0][j] = King.new 
        #         @rows[7][j] = Queen.new
        #     end 
        #     if j == 5 
        #         @rows[0][j] = Bishop.new 
        #         @rows[7][j] = Bishop.new
        #     end 
        #     if j == 6
        #         @rows[0][j] = Knight.new 
        #         @rows[7][j] = Knight.new
        #     end 
        #     if j == 7 
        #         @rows[0][j] = Rook.new  
        #         @rows[7][j] = Rook.new
        #     end 

        # end

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