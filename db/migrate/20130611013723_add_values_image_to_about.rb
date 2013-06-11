class AddValuesImageToAbout < ActiveRecord::Migration
  def change
    add_column :about, :values_image, :string
  end
end
