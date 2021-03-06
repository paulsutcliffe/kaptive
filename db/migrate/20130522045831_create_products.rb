class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :content
      t.text :preview
      t.string :slug

      t.timestamps
    end
  end
end
