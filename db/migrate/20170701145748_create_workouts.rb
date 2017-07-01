class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :level
      t.integer :time
      t.string :style
    end
  end
end
