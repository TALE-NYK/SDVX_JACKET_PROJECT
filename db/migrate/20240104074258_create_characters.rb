class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.text :name
      t.text :image

      t.timestamps
    end
  end
end
