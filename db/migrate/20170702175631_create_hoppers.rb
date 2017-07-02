class CreateHoppers < ActiveRecord::Migration[5.1]
  def change
    create_table :hoppers do |t|
      t.string :time_domain
      t.string :level
    end
  end
end
