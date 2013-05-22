class AddLogoToMetadata < ActiveRecord::Migration
  def change
    add_column :metadata, :logo, :string
  end
end
