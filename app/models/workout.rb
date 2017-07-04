require 'pry'
require 'sinatra/activerecord'
require './config/environment.rb'


class Workout < ActiveRecord::Base
  has_many :hoppers
  has_many :movements, through: :hoppers
  has_many :styles, through: :movements
end
