require 'sinatra/base'
require 'haml'

class NameThatResearcher < Sinatra::Base
  @@names = File.readlines('names').map { |name| name.chomp }

  get '/' do

    d10 = rand(100)
    image = case
    when d10 > 0
      'https://pbs.twimg.com/profile_images/481399996743303169/UnJ_6p6l.jpeg'
    else
      'https://pbs.twimg.com/profile_images/511282691841355776/Ie96g9Ul.jpeg'
    end

    haml :index, locals: {
      title: 'Name That Researcher',
      image: image,
      name: @@names.sample,
      bootstrap_theme: 'http://bootswatch.com/superhero/bootstrap.min.css',
      additional_styles: [ '../styles.css' ],
      github: {
        user: 'pikesley',
        project: 'namethatresearcher',
        ribbon: 'right_gray_6d6d6d'
      }
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
