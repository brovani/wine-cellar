class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :media, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true
      t.string :rating
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
