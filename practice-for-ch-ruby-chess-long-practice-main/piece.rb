class Piece

    attr_accessor :pos, :color, :board
    
    def initialize(color, board, pos)
        @board = board 
        @color = color 
        @pos = pos 
        @move_dirs = []
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