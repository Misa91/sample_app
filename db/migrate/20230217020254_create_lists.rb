class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :title  # 追加
      t.string :body # 追加
      t.timestamps
    end
  end
end
