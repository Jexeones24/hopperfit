require 'pry'
require 'sinatra/activerecord'
require './config/environment.rb'
require 'json'

movements = File.read('./tools/movement_library.json')
MOVEMENT_LIB = JSON.parse(movements)

class Hopper < ActiveRecord::Base
  belongs_to :movement
  belongs_to :workout

  def self.generate_workout(time_domain)

    #generate number of movements

    def number_of_movements(time_domain)
      movement_num = nil
      if time_domain.between?(5, 10)
        movement_num = rand(1..3)
      elsif time_domain.between?(11, 30)
        movement_num = rand(3..5)
      else
        movement_num = rand(5..8)
      end
    end

    def choose_movements(movement_num)
      movement_array = MOVEMENT_LIB[:movements].sample(movement_num)
      # array of new movement objects
      new_movements = movement_array.map { |obj| Movement.new(name: obj[:name], target_area: obj[:target_area], rep_range: obj[:rep_range]) }
    end

    # assigns reps for one movement
    def rep_range
      reps = nil
      if movement[:rep_range] == "High"
        reps = rand(30..50)
      elsif movement[:rep_range] == "Moderate"
        reps = rand(11..29)
      else
        reps = rand(3..10)
      end
    end

    def each_movement(new_movements)
      rep_ranges = new_movements.map { |movement| movement.rep_range }
    end

    def create_workout
      workout = Workout.new
      new_movements.map { |m| workout.movements << m }
      #JSON needs rep_range field
      workout.save
    end

  end
end
