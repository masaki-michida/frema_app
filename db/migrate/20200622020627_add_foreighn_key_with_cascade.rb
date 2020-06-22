class AddForeighnKeyWithCascade < ActiveRecord::Migration[5.2]
  def change
    
      remove_foreign_key :images, :items
      add_foreign_key :images, :items, on_delete: :cascade, on_update: :cascade
    
  end
end
