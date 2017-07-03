require 'pry'
require 'sinatra/activerecord'
require './config/environment.rb'


class Workout < ActiveRecord::Base
  belongs_to :hopper

  def display
    @workout = @movement_array.each { |movement|
    puts "#{movement}" }
  end

end
