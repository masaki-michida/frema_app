class RemoveColumToUser < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :prefecture_id, :bigint, null: false
  end

  def down
    remove_column :users, :prefectures, :string
  end
  add_foeign_key :users, :prefecture
end
