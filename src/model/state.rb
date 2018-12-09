# Representacion del estado del juego

module Model
  class Coord < Struct.new(row, col)
  end

  class Food < Coord
  end

  class Snake < Struct.new(positions)
  end

  class Grid < Struct.new(row, col)
  end

  class State < Struct.new(snake, food, grid)
  end
end