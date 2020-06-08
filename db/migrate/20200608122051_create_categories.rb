class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.bigint :sub_category_id
      t.name
    end
    add_foreign_key :categories, :sub_categories
  end
end
