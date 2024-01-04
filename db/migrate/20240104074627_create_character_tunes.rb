class CreateCharacterTunes < ActiveRecord::Migration[7.1]
  def change
    create_table :character_tunes do |t|
      t.integer :character_id
      t.integer :tune_id

      t.timestamps
    end
  end
end
