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
            dx = delta[0]
            dy = delta[1]
            pos_moves << [row+dx,col+dy]
        end

        pos_moves 

    end 
    
    def move_dirs
        raise NotImplementedError
    end
end 