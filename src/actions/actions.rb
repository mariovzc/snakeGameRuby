module Actions
  def self.move_snake(state)
    next_direction = state.next_direction
    next_position = calc_next_position(state)
    #Verificar que la siguiente casilla sea valida
    if position_is_valid?(state, next_position)
      move_snake_to(state, next_position)
    else
      end_game(state)
    end

    private
    def calc_next_position(state)
      curr_positions = state.snake.positions.first
      case state.next_direction
      when UP
        # decrementar fila
        return Model::Coord.new(
          curr_positions.row - 1,
          curr_positions.col
        )
      when RIGHT
        # incrementar columna
        return Model::Coord.new(
          curr_positions.row,
          curr_positions.col + 1
        )
      when DOWN
        # incrementar la fila
        return Model::Coord.new(
          curr_positions.row + 1,
          curr_positions.col
        )
      when LEFT
        # decrementar la columna
        return Model::Coord.new(
          curr_positions.row,
          curr_positions.col - 1
        )
      end
    end
    # si no es valida -> terminar el juego
    # si es valida -> seguir juego
  end
end