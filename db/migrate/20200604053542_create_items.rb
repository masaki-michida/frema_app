class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references   :user_id,      null: false,  foreign_key: true
      t.string       :name,         null: false
      t.text         :statement,    null: false
      t.references   :category_id,                foreign_key: true
      t.references   :brand_id,                   foreign_key: true
      t.integer      :condition,    null: false
      t.integer      :delivery_fee, null: false
      t.references   :region_id,    null: false,  foreign_key: true
      t.integer      :lag,          null: false
      t.integer      :price,        null: false
      t.integer      :status,       null: false
      t.timestamps
    end
  end
end
