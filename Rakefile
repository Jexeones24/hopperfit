ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :default => :console
desc "Opens a pry console after loading environment.rb. This is the default task."
task :console do
  pry.Start
end
