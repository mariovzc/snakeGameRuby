require 'ruby2d'

module View
  class Ruby2dView

    def initialize
      @pixel_size = 50
    end

    def render(state)
      extend Ruby2D::DSL
      set(title: 'Snake',
          width: @pixel_size * state.grid.cols,
          height: @pixel_size * state.grid.rows)
      render_food(state.food)
      render_snake(state.snake)
      show
    end

    private

    def render_food(food)
      extend Ruby2D::DSL

      Square.new(
        x: food.col * @pixel_size,
        y: food.row * @pixel_size,
        size: @pixel_size,
        color: 'yellow'
      )
    end

    def render_snake(snake)
      extend Ruby2D::DSL
      snake.positions.each do |pos|
        Square.new(
          x: pos.col * @pixel_size,
          y: pos.row * @pixel_size,
          size: @pixel_size,
          color: 'green'
        )
      end
    end
  end
end