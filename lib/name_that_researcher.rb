require 'sinatra/base'
require 'haml'

class NameThatResearcher < Sinatra::Base
  @@names = File.readlines('names').map { |name| name.chomp }
  get '/' do
    haml :index, locals: {
      title: 'Name That Researcher',
      image: 'https://pbs.twimg.com/profile_images/481399996743303169/UnJ_6p6l.jpeg',
      name: @@names.sample,
      bootstrap_theme: 'http://bootswatch.com/superhero/bootstrap.min.css',
      additional_styles: [ '../styles.css' ]
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
