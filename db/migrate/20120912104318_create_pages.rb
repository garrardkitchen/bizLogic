class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, :limit => 100, null:false
      t.text :description, null:true

      t.timestamps
    end

    add_index :pages, :id
  end
end
