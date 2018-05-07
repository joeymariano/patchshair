class CreatePatchCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :patchcategories do |t|
      t.integer :patch_id
      t.integer :category_id

      t.timestamps
    end
  end
end
