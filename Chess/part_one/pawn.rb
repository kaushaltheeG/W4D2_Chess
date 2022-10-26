require_relative "piece"

class Pawn < Piece
    attr_reader :symbol
    def initialize(color,board,pos,symbol)
        super(color,board,pos)
        @symbol = symbol
    end


    def moves 


    end 

    private 
    def at_start_row?
        pos[0] == 1 || pos[0] == 6
    end 

    def forward_dir 
        if at_start_row? 
            if pos[0] == 1

            else 
        elsif 

        else 

        end 

    end 


    def forward_steps 

    end 

    def side_attacks 

    end 
end 