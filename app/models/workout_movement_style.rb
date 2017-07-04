class WorkoutMovementStyle < ActiveRecord::Base
  has_many :workouts
  has_many :movements
  has_many :styles
end
