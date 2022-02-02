class AddImageToLibraries < ActiveRecord::Migration[5.2]
  def change
    add_column :libraries, :image, :text
  end
end
