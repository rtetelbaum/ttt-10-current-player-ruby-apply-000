board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#turn_count counts occupied positions
def turn_count(board)
  positions_occupied = 0
    board.each do |space|
      if space == "X" || space == "O"
        positions_occupied += 1
      end
    end
  positions_occupied
end

#current_player returns the correct player, X, for the first move
def current_player(board)
  player_turn = ""
  turn_count(board).even? ? player_turn = "X" : player_turn = "O"
  player_turn
end