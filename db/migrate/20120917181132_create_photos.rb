class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.text :description
      t.boolean :is_public

      t.timestamps
    end
  end
end
