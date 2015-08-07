require('rspec')
require('anagrams')
require('pry')

describe('String#anagrams') do
  it("returns an argument if the argument is an anagram of the object") do
   expect(("tar").anagrams("rat")).to(eq("rat"))
  end

  it("returns words from a string of words that are an anagram of the object") do
    expect(("cares").anagrams("races, acres, spots")).to(eq("races and acres"))
  end
end
