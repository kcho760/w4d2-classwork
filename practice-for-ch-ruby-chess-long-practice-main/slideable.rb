module Slideable 
    attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS

    HORIZONTAL_DIRS = [
        [0,1], #right
        [0,-1], #lefft
        [1,0], #up
        [-1,0], #down
    ].freeze

    DIAGONAL_DIRS = [
        [1,1], #up,right
        [-1,1], #down,right
        [-1,-1], #down,left
        [1,-1], #up,left
    ].freeze

    def moves
        pos_moves = []
        #how do we call move_dirs from subclass \
        row, col = self.pos 
        self.move_dirs.each do |delta|
            #loop do  
            dx = delta[0]
            dy = delta[1]
            pos_moves << grow_unblocked_moves_in_dir(dx,dy)
        end

        pos_moves 

    end 
    
    def grow_unblocked_moves_in_dir(dx,dy)
        unblocked_moves = []
        row, col = self.pos
        loop do 
            if @board[dx + row][dx + col].color == self.color #our piece
                break
            elsif @board[dx + row][dx + col].color != self.color #enemy piece
                unblocked_moves << [pot_pos]
                break
            elsif @board[dx + row] > 7 || @board[dx + row]< 0
                break
            elsif @board[dx + col] > 7 || @board[dx + col] < 0
                break
            else
                unblocked_moves << @board[dx + row][dx + col]
            end 
        end
        unblocked_moves
    end

    private
    
    def move_dirs
        raise NotImplementedError
    end
end 