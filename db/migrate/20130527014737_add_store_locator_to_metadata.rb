class AddStoreLocatorToMetadata < ActiveRecord::Migration
  def change
    add_column :metadata, :store_locator, :string
  end
end
