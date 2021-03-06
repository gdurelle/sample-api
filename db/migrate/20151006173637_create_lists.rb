class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
    add_foreign_key :lists, :user_id, unique: true
  end
end
