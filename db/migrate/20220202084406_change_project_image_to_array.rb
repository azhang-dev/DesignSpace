class ChangeProjectImageToArray < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :image_url
    add_column :projects, :images, :text, :array => true, :default => []
  end
end
