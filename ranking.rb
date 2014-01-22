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
  register Sinatra::AssetPack
  assets do
    serve '/js', from: 'assets/js'
    serve '/css', from: 'assets/css'
    serve '/images', from: 'assets/images'
  end

  get '/' do
    
    erb :home
    
  end
end
