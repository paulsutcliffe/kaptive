class CreateMetadata < ActiveRecord::Migration
  def change
    create_table :metadata do |t|
      t.string :phone
      t.string :facebook
      t.string :twitter
      t.string :email
      t.string :web
      t.string :kaptive
      t.text :address

      t.timestamps
    end
  end
end
