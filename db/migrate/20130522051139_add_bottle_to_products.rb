class AddBottleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :bottle, :string
  end
end
