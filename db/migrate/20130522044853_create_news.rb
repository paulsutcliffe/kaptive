class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :headline
      t.text :content
      t.string :slug

      t.timestamps
    end
  end
end
