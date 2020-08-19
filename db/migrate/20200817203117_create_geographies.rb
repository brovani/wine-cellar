class CreateGeographies < ActiveRecord::Migration[6.0]
  def change
    create_table :geographies do |t|
      t.string :country
      t.string :region
      t.string :subregion

      t.timestamps
    end
  end
end
