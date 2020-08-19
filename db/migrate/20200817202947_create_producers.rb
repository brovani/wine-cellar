class CreateProducers < ActiveRecord::Migration[6.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :website
      t.string :twitter
      t.string :instagram

      t.timestamps
    end
  end
end
