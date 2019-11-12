class AddDefaultValueToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :latitude, :float, default: 32.0763337
    change_column :users, :longitude, :float, default: 34.7660526
  end
end
