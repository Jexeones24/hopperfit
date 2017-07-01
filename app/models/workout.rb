class Workout < ActiveRecord::Base
  has_many :workout_movements
end
