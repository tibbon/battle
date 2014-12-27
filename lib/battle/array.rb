# Adding methods to array class for manipulating 2D arrays
class Array
  def nearby(x, y, distance)
    (-distance..distance).map do |x_index|
      (-distance..distance).map do |y_index|
        self[x + x_index][y + y_index]
      end
    end
  end

  # Only works for new_array of odd sizes
  def overlay(x_center, y_center, new_array, color: 'red')
    # Offsets to the center of the array
    x_offset = -(new_array.size - 1) / 2
    y_offset = -(new_array[0].size - 1) / 2

    # For each item in the new array...
    new_array.each_with_index do |row, x_index|
      row.each_with_index do |cell, y_index|
        self[x_index + x_center + x_offset][y_index + y_center + y_offset] =
          new_array[x_index][y_index]
      end
    end

    self
  end
end


