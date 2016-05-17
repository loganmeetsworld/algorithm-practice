def is_unique_with_extra_data_structure(string)
  hash = Hash.new 0 
  string.each_char do |letter|
    hash[letter] += 1
    if hash[letter] > 1
      return false
    end
  end
  return true
end

def is_unique_without_extra_data_structure(string)
  letter_array = string.split('').sort
  letter_array.each_with_index do |letter, i|
    if letter == letter_array[i + 1]
      return false
    end
  end
  return true
end


puts is_unique_with_extra_data_structure('abcjdksl') == true
puts is_unique_with_extra_data_structure('carefree') == false
puts is_unique_with_extra_data_structure('') == true
puts is_unique_with_extra_data_structure('no way') == true
puts is_unique_with_extra_data_structure('hello world') == false
puts "\n"
puts is_unique_without_extra_data_structure('abcjdksl') == true
puts is_unique_without_extra_data_structure('carefree') == false
puts is_unique_without_extra_data_structure('') == true
puts is_unique_without_extra_data_structure('no way') == true
puts is_unique_without_extra_data_structure('hello world') == false