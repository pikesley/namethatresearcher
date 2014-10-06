require 'sinatra/base'

class NameThatResearcher < Sinatra::Base
  get '/' do
    'Name That Researcher!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
