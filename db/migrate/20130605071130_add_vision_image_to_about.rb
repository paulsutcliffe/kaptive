class AddVisionImageToAbout < ActiveRecord::Migration
  def change
    add_column :about, :vision_image, :string
  end
end
