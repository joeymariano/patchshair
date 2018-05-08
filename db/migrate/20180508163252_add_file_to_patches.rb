class AddFileToPatches < ActiveRecord::Migration[5.1]
  def change
    add_column :patches, :file, :string
  end
end
