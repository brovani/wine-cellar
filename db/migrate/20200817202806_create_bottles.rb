class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.references :storage, null: false, foreign_key: true
      t.references :case, null: false, foreign_key: true
      t.string :size
      t.integer :number
      t.string :rotation
      t.string :photo
      t.references :merchant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
