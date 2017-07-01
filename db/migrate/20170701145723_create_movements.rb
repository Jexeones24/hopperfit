class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.string :name
      t.string :target_area
      t.string :description
      t.string :demo_vid #url
    end
  end
end
