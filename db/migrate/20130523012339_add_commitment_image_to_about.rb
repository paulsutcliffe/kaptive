class AddCommitmentImageToAbout < ActiveRecord::Migration
  def change
    add_column :about, :commitment_image, :string
  end
end
