class CreateAbout < ActiveRecord::Migration
  def change
    create_table :about do |t|
      t.text :history
      t.text :commitment
      t.text :vision
      t.text :mission

      t.timestamps
    end
  end
end
