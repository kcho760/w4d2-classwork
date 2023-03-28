class Board

    def initialize
        @grid = Array.new(8) { Array.new(8, Piece.new(color, board, pos)) }

    end

    def [](position)
        row , col = position 
        @grid[row][col]
    end 

    def []=(position,value)
        row, col = position 
        @grid[row][col] = value 
    end 

    def fill_grid 
        @grid

    end 
end 