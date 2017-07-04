class Style < ActiveRecord::Base
  has_many :movements
  has_many :workouts, through: :movements
end
