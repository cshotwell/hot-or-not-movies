require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/assetpack'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'sinatra_application.sqlire3.db'
)

class Movie < ActiveRecord::Base
end

class HotOrNot < Sinatra::Base
  set :root, File.dirname('#{Dir.pwd}')

  register Sinatra::AssetPack
  assets do
    js :application, [
      './js/*.js',
    ]
    css :application, [
      './css/*.css',
    ]
  end

  get '/' do
    
    erb :home
    
  end
end
