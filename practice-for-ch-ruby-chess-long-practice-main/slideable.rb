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
        #how do we call move_dirs from subclass 
        row, col = self.pos 
        self.move_dirs.each do |delta|
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
            pos = [row+dx,col+dy]
            if pos[0] > 7 || pos[0] < 0
            break
            end
            if pos[1] > 7 || pos[1] < 0
            break
            end 
            if @board[row+dx][col+dy].color == self.color #our piece #board[row+dx][col+dy]
                break
            elsif @board[row+dx][col+dy].color != self.color #enemy piece
                unblocked_moves << @board[row+dx][col+dy]
                break
            else
                unblocked_moves << @board[row+dx][col+dy]
            end 
        end
        unblocked_moves
    end

    private
    
    def move_dirs
        raise NotImplementedError
    end
end 