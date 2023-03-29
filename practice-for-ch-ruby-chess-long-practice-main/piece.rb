

class Piece

    @@color = [:Black,:White,:Null]
    
    attr_accessor :pos, :color, :board
    
    def initialize(color=:nul, board, pos)
        @board = board 
        @color = color 
        @pos = pos 
    end 

    

    # def moves 
    #     possible_moves = []
    #     (0..7).each do |i|
    #         (0..7).each do |j|
    #             if @board[i][j] == nil 
    #                 possible_moves << [i, j]
    #             end 
    #         end 
    #     end
    #     possible_moves 
    # end 

end