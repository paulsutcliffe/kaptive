class AddValuesToAbout < ActiveRecord::Migration
  def change
    add_column :about, :values, :text
  end
end
