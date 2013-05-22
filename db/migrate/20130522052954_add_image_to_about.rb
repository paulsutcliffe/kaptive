class AddImageToAbout < ActiveRecord::Migration
  def change
    add_column :about, :image, :string
  end
end
