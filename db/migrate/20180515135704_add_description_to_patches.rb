class AddDescriptionToPatches < ActiveRecord::Migration[5.1]
  def change
    add_column :patches, :description, :string
  end
end
