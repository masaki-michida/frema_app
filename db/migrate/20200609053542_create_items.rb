class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.bigint       :user_id,                      null: false
      t.string       :name,                         null: false
      t.text         :statement,                    null: false
      t.bigint       :category_id,                  null: false
      t.bigint       :brand_id
      t.integer      :condition,                    null: false
      t.integer      :delivery_fee,                 null: false
      t.bigint       :prefecture_id,                null: false
      t.integer      :lag,                          null: false
      t.integer      :price,                        null: false
      t.integer      :status,                       null: false
      t.timestamps
    end
    add_foreign_key :items, :users
    add_foreign_key :items, :categories
    add_foreign_key :items, :brands
    add_foreign_key :items, :prefectures
  end
end
