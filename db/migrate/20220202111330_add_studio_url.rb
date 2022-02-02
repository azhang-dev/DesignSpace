class AddStudioUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :studio_url, :text
  end
end
