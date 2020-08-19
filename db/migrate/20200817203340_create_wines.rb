class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :nickname
      t.string :color
      t.string :type
      t.string :lwin
      t.references :producer, null: false, foreign_key: true
      t.references :geography, null: false, foreign_key: true
      t.references :case, null: false, foreign_key: true
      t.references :bottle, null: false, foreign_key: true
      t.string :twitter
      t.string :instagram
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
