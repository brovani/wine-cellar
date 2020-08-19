class CreateMerchants < ActiveRecord::Migration[6.0]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :login
      t.string :password
      t.string :twitter
      t.string :instagram
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
