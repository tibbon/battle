class Array
  def nearby(x, y, distance, zero_bound: false, max_bound: false)
    (-distance..distance).map do |x_index|
      (-distance..distance).map do |y_index|
        self[x + x_index][y + y_index]
      end
    end
  end

  def overlay(x, y ,new_array, color: "red" )
    x_distance = (new_array.size - 1) / 2
    y_distance = (new_array[0].size - 1) / 2
    (-x_distance..x_distance).each do |x_index|
      (-y_distance..y_distance).each do |y_index|
        self[x_index + x][y_index + y] = new_array[x_index][y_index].tile_type.method(color).call
      end
    end
    self
  end
end
