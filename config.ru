require './ranking'

use ActiveRecord::ConnectionAdapters::ConnectionManagement

run Sinatra::Application::HotOrNot
