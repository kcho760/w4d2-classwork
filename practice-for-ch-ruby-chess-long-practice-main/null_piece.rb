class Null_piece < Piece
    include Singleton

    def initialize
        @color = :Null
        @symbol = " "
    end

    def color
        @color
    end

    def symbol
        @symbol
    end

end