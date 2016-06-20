def check_permutation(string_1, string_2)
  a = string_1.split('').sort
  b = string_2.split('').sort

  a.each do |a_letter|
    b.each do |b_letter|
      if a != b
        return false
      end
    end
  end

  return true
end

puts check_permutation('hello', 'olhle')
puts check_permutation('what is going on', 'on is going what')
puts check_permutation('', '')