class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :website
      t.string :login
      t.string :password
      t.string :twitter
      t.string :instagram

      t.timestamps
    end
  end
end
