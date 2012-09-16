class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, limit: 100, null: false
      t.string :first_name, :limit => 50, null: true
      t.string :last_name, :limit => 50, null: true
      t.boolean :is_active, default: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end

    add_index :users, :id 
  end
end
