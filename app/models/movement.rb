class Movement < ActiveRecord::Base
  has_many :styles
  has_many :hoppers
  has_many :workouts, through: :hoppers
end
