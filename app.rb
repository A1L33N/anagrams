require('sinatra')
require('pry')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagrams') do
  @word = params.fetch("blah")
  @list = params.fetch('list')
  @result = @word.anagrams(@list)

  erb(:anagrams_result)
end
