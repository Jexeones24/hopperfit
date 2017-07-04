class CreateWorkoutMovementStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :workout_movement_styles do |t|
      t.integer :workout_id
      t.integer :movement_id
      t.integer :style_id
    end
  end
end
