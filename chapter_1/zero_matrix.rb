class ZeroMatrix
  def print_matrix(matrix)
    for i in 0...matrix.length
      puts matrix[i].join('')
    end
  end

  def find_zero_positions(matrix)
    zero_positions = []

    matrix.each_with_index do |m, i|
      m.each_with_index do |n, j|
        if n == 0
          zero_positions << [i, j]
        end
      end
    end

    return zero_positions
  end

  def zerofy_rows_and_columns(matrix, zero_positions)
    zero_positions.each do |row, column|
      for i in 0...matrix[row].length
        matrix[row][i] = 0
      end

      for i in 0...matrix.length
        matrix[i][column] = 0
      end
    end

    return matrix
  end
end

matrix = Array.new(5) { Array.new(5) { rand(0..9) } }
z = ZeroMatrix.new
z.print_matrix(matrix)
zero_positions = z.find_zero_positions(matrix)
new_matrix = z.zerofy_rows_and_columns(matrix, zero_positions)
z.print_matrix(new_matrix)
