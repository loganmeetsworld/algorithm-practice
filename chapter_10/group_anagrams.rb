def group_anagrams(array)
  anagram_hash = Hash.new { |h, k| h[k] = [] }
  array.each do |word|
    anagram_hash[word.split('').sort.join('')] << word
  end

  return anagram_hash.values
end
array = ["tthawup", "hello", "cat", "blip", "whattup", "tac", "plib"]
puts group_anagrams(array)