class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.references :storage, null: false, foreign_key: true
      t.integer :number
      t.integer :bottles_per_case
      t.string :rotation
      t.references :merchant, null: false, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
