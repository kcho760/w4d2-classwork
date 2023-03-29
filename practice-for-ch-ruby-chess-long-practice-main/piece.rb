class Piece 

    def initialize(color, board, pos)
        @board = board 
        @color = symbol 
        @pos = pos 
    end 



    def moves 
        possible_moves = []
        (0..7).each do |i|
            (0..7).each do |j|
                if @board[i][j] == nil 
                    possible_moves << [i, j]
                end 
            end 
        end
        possible_moves 
    end 



    
    # module Slideable
    #     if self.is_a?(Bishop) || self.is_a?(Queen)
    #         move_dirs = [ 
    #             []






    #         ]
    #         Diagonal 
    #     end 
    #     if self.is_a?(Rook) || self.is_a?(Queen)
    #         Horizontal
    #     end 

    # end 

    # module Stepable 

    # end 

end