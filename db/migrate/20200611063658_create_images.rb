class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :content,       null: false
      t.references :item,      null: false

      t.timestamps
    end
    add_foreign_key :images, :items,on_update: :cascade, on_delete: :cascade
  end
end
