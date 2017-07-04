class CreateAddTimeDomainToHoppers < ActiveRecord::Migration[5.1]
  def change
    change_table :hoppers do |t|
      t.column :time_domain, :integer
    end
  end
end
