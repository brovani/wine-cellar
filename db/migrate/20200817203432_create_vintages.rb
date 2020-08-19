class CreateVintages < ActiveRecord::Migration[6.0]
  def change
    create_table :vintages do |t|
      t.references :wine, null: false, foreign_key: true
      t.string :year

      t.timestamps
    end
  end
end
