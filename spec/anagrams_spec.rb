require('rspec')
require('anagrams')
require('pry')

describe('String#anagrams') do
  it("returns true if 'on' is an anagram of 'no'") do
    expect(("on").anagrams("no")).to(eq(true))
  end

end
