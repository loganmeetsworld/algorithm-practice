def merge_not_sort(array_1, array_2)
  merged_array = Array.new
  i = 0
  j = 0

  while i < array_1.count && j < array_2.count
    if array_1[i] > array_2[j]
      merged_array.push(array_2[j])
      j += 1
    else
      merged_array.push(array_1[i])
      i += 1
    end
  end

  return merged_array
end

a = [3, 4, 5, 7, 8, 35, 57, 87]
b = [1, 2, 4, 6, 7, 8, 9, 46, 100, 222]
sorted = merge_not_sort(a, b)

puts "After sort: \n" + sorted.to_s