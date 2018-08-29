class CreatePatches < ActiveRecord::Migration[5.1]
  def change
    create_table :patches do |t|
      t.string :name
      t.string :game
      t.boolean :original
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
