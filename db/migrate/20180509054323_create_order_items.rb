class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.string :kitchen_id
      t.string :name
      t.integer :number
      t.timestamps
    end
  end
end
