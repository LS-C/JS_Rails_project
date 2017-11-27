class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :description
      t.integer :inventory
      t.integer :seller_id

      t.timestamps
    end
  end
end
