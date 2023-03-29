require_relative "piece"
require_relative "slideable"

class Queen < Piece
    include Slideable

    # def initialize

    # end

    # def symbol
    #     '👑'.colorize(color)
    # end

    def move_dirs
        # @move_dirs <<  HORIZONTAL_DIRS 
        # @move_dirs << DIAGONAL_DIRS 
        HORIZONTAL_DIRS + DIAGONAL_DIRS
    end



end 