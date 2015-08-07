require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("anagrams path", type {:type => feature}) do
   it('takes a user entered word and a group of user entered words and determines if any of the group are anagrams of the original word') do
     visit('/')
     fill_in('word', :with => 'tops')
     fill_in('list', :width => 'spot, pots, post, boat, test'
     click_button('Find anagrams')
     expect(page).to have_content('spot, pots, post')
   end

end
