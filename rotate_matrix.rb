def rotate_matrix(matrix)
  n = matrix.length
  new_array = Array.new(n) { Array.new(n) }

  for i in 0...n
    for j in 0...n
      new_array[i][j] = matrix[n - 1 - j][i]
    end
  end

  return new_array
end

def rotate_matrix_in_place(matrix)
  n = matrix.length

  for i in 0...n/2
    for j in i...(n - 1 - i)
      tmp = matrix[i][j]
      matrix[i][j] = matrix[n - 1 - j][i];
      matrix[n - 1 - j][i] = matrix[n - 1 - i][n - 1 - j];
      matrix[n - 1 - i][n - 1 - j] = matrix[j][n - 1 - i];
      matrix[j][n - 1 - i] = tmp;
    end
  end

  return matrix
end

matrix = [
  ["A", "B", "C", "D"],
  ["E", "F", "G", "H"],
  ["I", "J", "K", "L"],
  ["M", "N", "O", "P"]
]

rotated_matrix = [
  ["M", "I", "E", "A"],
  ["N", "J", "F", "B"],
  ["O", "K", "G", "C"],
  ["P", "L", "H", "D"]
]

puts rotate_matrix(matrix) == rotated_matrix
puts rotate_matrix_in_place(matrix) == rotated_matrix
