class AddBottlebackToProducts < ActiveRecord::Migration
  def change
    add_column :products, :bottleback, :string
  end
end
