class CreateRemoveHopperIdFromWorkouts < ActiveRecord::Migration[5.1]
  def change
    remove_column :workouts, :hopper_id 
  end
end
