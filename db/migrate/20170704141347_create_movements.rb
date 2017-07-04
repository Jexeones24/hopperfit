class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.string :name
      t.string :target_area
      t.string :rep_range
    end
  end
end
