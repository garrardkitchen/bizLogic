class CreateLogics < ActiveRecord::Migration
  def change
    create_table :logics do |t|
      t.text :code
      t.text :description
      t.integer :logic_order
      t.integer :user_id
      t.integer :page_id

      t.timestamps
    end

    add_index :logics, :id
    add_index :logics, :user_id
  end
end
