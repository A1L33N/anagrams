class String
  define_method(:anagrams) do |input|
    word_array = []
    word_array = self.split("").sort!()
    input_array = input.split(", ")
    anagram_array = []

    input_array.each() do |word|

      if word_array == word.split("").sort!()
        anagram_array.push(word)

      end
      anagram_array
    end

      result = anagram_array.join(" and ")
  end
end
