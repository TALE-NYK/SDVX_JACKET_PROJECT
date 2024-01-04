class CreateTunes < ActiveRecord::Migration[7.1]
  def change
    create_table :tunes do |t|
      t.text :name
      t.integer :difficulty
      t.text :memo

      t.timestamps
    end
  end
end
