require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require './ranking'
require 'sinatra/activerecord/rake'


Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

task :default => :features
