class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :market_id
      t.string :name
      t.string :description
      t.float :price
      t.integer :amount_available
      t.string :unit

      t.timestamps
    end
  end
end
