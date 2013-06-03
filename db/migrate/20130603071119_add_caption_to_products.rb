class AddCaptionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :caption, :string
  end
end
