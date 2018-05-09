class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :kitchen_id
      t.string :kind
      t.string :name
      t.text :description
      t.string :href
      t.timestamps
    end
  end
end
