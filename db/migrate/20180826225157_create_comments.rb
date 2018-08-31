class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :patch_id
      t.string :username

      t.timestamps
    end
  end
end
