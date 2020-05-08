class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :location
      t.boolean :is_open

      t.timestamps
    end
  end
end
