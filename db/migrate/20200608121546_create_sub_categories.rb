class CreateSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_categories do |t|
      t.bigint :top_category_id
      t.string :name
    end
    add_foreign_key :sub_categories, :top_categories
  end
end
