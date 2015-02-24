require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/assetpack'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'hot_or_not.sqlite3.db'
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
    @movie_1 = get_random_movie
    @movie_2 = get_random_movie
    erb :home
  end

  post '/:id' do
    movie  = Movie.find(params[:id])
    movie.update_attributes({score: movie.score+1})
    redirect '/'
  end

  get '/leaderboard' do
    @movies = Movie.order(score: :desc, title: :asc)
    erb :leaderboard
  end

  private
  def get_random_movie
    Movie.order("RANDOM()").first
  end
end
