class String
  define_method(:anagrams) do |original|
    word_array = []
    word_array = self.split("").sort!()
    if word_array = original.split("").sort!()
      true
    end


  end
end
