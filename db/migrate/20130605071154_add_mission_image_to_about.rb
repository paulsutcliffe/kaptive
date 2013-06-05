class AddMissionImageToAbout < ActiveRecord::Migration
  def change
    add_column :about, :mission_image, :string
  end
end
