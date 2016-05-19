def one_away(string_1, string_2)
  if string_1 == string_2
    return true
  elsif (string_1.length - string_2.length).abs > 1
    return false
  else
    count = 0
    j = 0

    if string_1.length == string_2.length
      for i in 0..string_1.length
        if string_1[i] != string_2[i]
          count += 1
        end
        if count > 1
          return false
        end
      end
    elsif string_1.length > string_2.length
      for i in 0..string_1.length
        if string_1[i] != string_2[j]
          j -= 1
          count += 1
        end
        if count > 1
          return false
        end
        j += 1
      end
    else
      for i in 0..string_2.length
        if string_2[i] != string_1[j]
          j -= 1
          count += 1
        end
        if count > 1
          return false
        end
        j += 1
      end
    end
    return true
  end
end

puts one_away('pale', 'ple') == true
puts one_away('pales', 'pale') == true
puts one_away('pale', 'bale') == true
puts one_away('pale', 'bake') == false